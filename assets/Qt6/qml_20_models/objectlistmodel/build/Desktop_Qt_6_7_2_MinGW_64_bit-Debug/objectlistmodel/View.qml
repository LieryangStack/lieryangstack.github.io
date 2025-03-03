import QtQuick
import QtQuick.Controls


Window {
    id: root
    objectName: "root"
    width: 800
    height: 500
    visible: true

    ListView {
        id: listview
        width: 200; height: 320
        model: model1
        ScrollBar.vertical: ScrollBar { }

        delegate: Rectangle {
            width: listview.width; height: 25

            required color /* 通过添加 required 要求现有属性，关联到model对象的color */
            property string name

            Text { text: parent.name }
        }
    }
}
