#include <adwaita.h>

static void 
app_activate (GApplication *app, gpointer *user_data) {
  GtkWidget *win = gtk_application_window_new (GTK_APPLICATION (app));

  gtk_window_set_application (GTK_WINDOW (win), GTK_APPLICATION (app));

  gtk_widget_set_size_request (win, 100, 100);

  GtkWidget *box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
  GtkWidget *button = gtk_button_new_with_label ("按钮");
  GtkWidget *label = gtk_label_new ("标签");

  GtkWidget *large_image = gtk_image_new_from_file ("/home/lieryang/Desktop/LieryangStack.github.io/assets/GTK4/13_GtkImage/image/width_image.png");
  GtkWidget *inherit_image = gtk_image_new_from_icon_name ("mail-unread");
  GtkWidget *normal_image = gtk_image_new_from_icon_name ("mail-unread");
  // GtkWidget *large_image = gtk_image_new_from_icon_name ("mail-unread);

  GtkWidget *picture = gtk_picture_new_for_filename ("/home/lieryang/Desktop/LieryangStack.github.io/assets/GTK4/13_GtkImage/image/bird.jpg");

  /* 通过枚举类型设定图标大小 */
  gtk_image_set_icon_size (GTK_IMAGE(inherit_image), GTK_ICON_SIZE_INHERIT);
  gtk_image_set_icon_size (GTK_IMAGE(normal_image), GTK_ICON_SIZE_NORMAL);
  gtk_image_set_icon_size (GTK_IMAGE(large_image), GTK_ICON_SIZE_LARGE);

  /* MIN {width, height} 设定为 @pixel_size */
  gtk_image_set_pixel_size (GTK_IMAGE(large_image), 200);

  // gtk_widget_set_hexpand (image, TRUE);
  // gtk_widget_set_vexpand (image, TRUE);

  gtk_widget_set_hexpand (picture, TRUE);
  gtk_widget_set_vexpand (picture, TRUE);

  gtk_box_append (GTK_BOX(box), label);
  gtk_box_append (GTK_BOX(box), button);
  gtk_box_append (GTK_BOX(box), inherit_image);
  gtk_box_append (GTK_BOX(box), normal_image);
  gtk_box_append (GTK_BOX(box), large_image);  
  gtk_box_append (GTK_BOX(box), picture);

  gtk_window_set_child (GTK_WINDOW(win), GTK_WIDGET(box));

  gtk_window_present (GTK_WINDOW (win));
}

int
main (int argc, char *argv[]) {
  g_autoptr (AdwApplication) app = adw_application_new ("test.application", G_APPLICATION_DEFAULT_FLAGS);
  g_signal_connect (app, "activate", G_CALLBACK (app_activate), NULL);
  return g_application_run (G_APPLICATION (app), argc, argv);
}