---
layout: post
title: 三、GIO——GApplication
categories: GIO学习笔记
tags: [GIO]
---

## 1 GApplication官网介绍

- GApplication 是支持应用程序的核心类。

- GApplication 是应用程序的基础。它封装了一些低级别的平台特定服务，旨在作为更高级别应用程序类（如 GtkApplication 或 MxApplication）的基础。通常，不应在更高级别的框架之外使用此类。

- GApplication 通过维护主要应用程序实例的“使用计数”来提供方便的生命周期管理。可以使用 g_application_hold() 和 g_application_release() 更改使用计数。如果计数降到零，应用程序将退出。更高级别的类（如 GtkApplication）使用使用计数来确保只要有任何窗口打开，应用程序就保持运行。

- GApplication 提供的另一个功能（可选）是进程唯一性。应用程序可以通过提供唯一的应用程序 ID 来利用此功能。如果提供了该 ID，则每个会话中只能运行一个具有此 ID 的应用程序。会话的概念依赖于平台，但大致对应于图形桌面登录。当再次启动应用程序时，其参数通过平台通信传递给已经运行的程序。已经运行的实例称为“主实例”；对于非唯一应用程序，这始终是当前实例。在 Linux 上，使用 D-Bus 会话总线进行通信。

- GApplication 的使用方式与一些常用的唯一性库（如 libunique）在重要方面有所不同。应用程序不需要手动注册自己并检查它是否是主实例。相反，GApplication 的 main() 函数应该做的不多，只需实例化应用程序实例，可能连接信号处理程序，然后调用 g_application_run()。所有唯一性检查都在内部完成。如果应用程序是主实例，则发出启动信号并运行主循环。如果应用程序不是主实例，则向主实例发送信号，并立即返回 g_application_run()。请参阅下面的代码示例。

- 如果使用，应用程序标识符的预期形式与 D-Bus 知名总线名称的形式相同。示例包括：com.example.MyApp，org.example.internal_apps.Calculator，org._7_zip.Archiver。有关有效应用程序标识符的详细信息，请参见 g_application_id_is_valid()。

- 在 Linux 上，应用程序标识符作为用户会话总线上的知名总线名称声明。这意味着应用程序的唯一性范围限于当前会话。这也意味着应用程序可以在该总线名称下提供其他服务（通过注册其他对象路径）。这些对象路径的注册应该在共享的 GDBus 会话总线上进行。请注意，由于 GDBus 的内部架构，方法调用可以在任何时间分派（即使主循环未运行）。因此，必须确保在 GApplication 尝试获取应用程序的总线名称之前（即在 g_application_register() 中）注册任何要注册的对象路径。不幸的是，这意味着不能使用 GApplication
来决定是否要注册对象路径。

- GApplication 还实现了 GActionGroup 和 GActionMap 接口，允许您通过 g_action_map_add_action() 轻松导出操作。通过在应用程序上调用 g_action_group_activate_action() 来调用操作时，它始终在主实例中调用。操作也在会话总线上导出，GIO 提供了 GDBusActionGroup 包装器以便远程方便地访问它们。GIO 提供了一个 GDBusMenuModel 包装器，用于远程访问导出的 GMenuModels。

- 注意：由于操作在会话总线上导出，因此不支持使用 maybe 参数，因为 D-Bus 不支持 maybe 类型。

- 进入 GApplication 的途径有很多：

    - 通过“Activate”（即启动应用程序）
    
    - 通过“Open”（即打开某些文件）
    
    - 通过处理命令行
    
    - 通过激活操作
    
    - GApplication::startup 信号让您可以在一个地方处理所有这些的应用程序初始化。

- 无论使用这些途径中的哪一种来启动应用程序，GApplication 都会将一些“平台数据”从启动实例传递到主实例，以 GVariant 字典映射字符串到变体的形式传递平台数据。要使用平台数据，请在您的 GApplication 子类中重写 Gio.ApplicationClass.before_emit 或 Gio.ApplicationClass.after_emit 虚函数。当处理 GApplicationCommandLine 对象时，平台数据可通过 g_application_command_line_get_cwd()、g_application_command_line_get_environ() 和 g_application_command_line_get_platform_data() 直接获取。

- 顾名思义，平台数据可能因操作系统而异，但始终包括当前目录（键为 cwd），并且可选地包括调用进程的环境（即环境变量及其值的集合）（键为 environ）。只有设置了 G_APPLICATION_SEND_ENVIRONMENT 标志时，环境才会添加到平台数据中。GApplication 子类可以通过重写 Gio.ApplicationClass.add_platform_data 虚函数来添加自己的平台数据。例如，GtkApplication 通过这种方式添加启动通知数据。

- 要解析命令行参数，可以处理 GApplication::command-line 信号或重写 Gio.ApplicationClass.local_command_line 虚函数，以便分别在主实例或本地实例中解析它们。

- 有关使用 GApplication 打开文件的示例，请参见 gapplication-example-open.c。

- 有关使用操作的 GApplication 示例，请参见 gapplication-example-actions.c。

- 有关使用 GApplication 进行额外 D-Bus 挂钩的示例，请参见 gapplication-example-dbushooks.c。

## 2 GApplication

继承于 `GObject` 的标准类型对象。

```c
/* filename: gapplication.h */
struct _GApplication
{
  /*< private >*/
  GObject parent_instance;

  GApplicationPrivate *priv;
};

/* filename: gapplication.c */
G_DEFINE_TYPE_WITH_CODE (GApplication, g_application, G_TYPE_OBJECT,
G_ADD_PRIVATE (GApplication)
G_IMPLEMENT_INTERFACE (G_TYPE_ACTION_GROUP, g_application_action_group_iface_init)
G_IMPLEMENT_INTERFACE (G_TYPE_ACTION_MAP, g_application_action_map_iface_init))
```

```c
/**
 * GApplicationClass:
 * @startup: 在注册后立即在主实例上调用
 * @shutdown: 仅在主循环终止后立即在注册的主实例上调用
 * @activate: 当发生激活时在主实例上调用
 * @open: 当有文件要打开时在主实例上调用
 * @command_line: 当命令行未在本地处理时在主实例上调用
 * @local_command_line: （本地）调用。虚函数有机会检查（并可能替换）命令行参数。
 *     有关更多信息，请参见 g_application_run()。另请参见 
 *     #GApplication::handle-local-options 信号，这是在本地处理某些命令行选项的更简单替代方法
 * @before_emit: 在“activate”、“open”、“command-line”或任何操作调用之前在主实例上调用，
 *     从调用实例获取“平台数据”
 * @after_emit: 在“activate”、“open”、“command-line”或任何操作调用之后在主实例上调用，
 *     从调用实例获取“平台数据”
 * @add_platform_data: （本地）调用以添加“平台数据”，在激活、打开或调用操作时发送到主实例
 * @quit_mainloop: 当应用程序的使用计数降为零时（以及在任何非活动超时之后，如果请求）
 *     在主实例上调用。自 2.32 起不再使用
 * @run_mainloop: 从 g_application_run() 在使用计数不为零时在主实例上调用。
 *     自 2.32 起，GApplication 直接迭代主上下文，不再使用 @run_mainloop
 * @dbus_register: 如果应用程序使用其 D-Bus 后端，在注册期间在本地调用。您可以使用此方法在总线上导出
 *     需要在应用程序尝试占有总线名称之前存在的额外对象。该函数传递到会话总线的 #GDBusConnection 
 *     和 #GApplication 将用于导出 D-Bus API 的对象路径。如果此函数返回 %TRUE，注册将继续进行；
 *     否则，注册将中止。自 2.34 起
 * @dbus_unregister: 如果应用程序使用其 D-Bus 后端，在取消注册期间在本地调用。使用此方法撤消 @dbus_register 
 *     虚函数所做的任何操作。自 2.34 起
 * @handle_local_options: 在命令行选项解析完成后在本地调用。自 2.40 起
 * @name_lost: 当另一个实例接管名称时调用。自 2.60 起
 *
 * #GApplication 的虚函数表。
 *
 * 自 2.28 起
 */

struct _GApplicationPrivate
{
  GApplicationFlags  flags;
  gchar             *id;
  gchar             *resource_path;

  GActionGroup      *actions;

  guint              inactivity_timeout_id;
  guint              inactivity_timeout;
  guint              use_count;
  guint              busy_count;

  guint              is_registered : 1;
  guint              is_remote : 1;
  guint              did_startup : 1;
  guint              did_shutdown : 1;
  guint              must_quit_now : 1;

  GRemoteActionGroup *remote_actions;
  GApplicationImpl   *impl;

  GNotificationBackend *notifications;

  /* GOptionContext 支持 */
  GOptionGroup       *main_options;
  GSList             *option_groups;
  GHashTable         *packed_options;
  gboolean            options_parsed;
  gchar              *parameter_string;
  gchar              *summary;
  gchar              *description;

  /* 从 g_application_add_main_option() 分配的选项字符串 */
  GSList             *option_strings;
};

```
