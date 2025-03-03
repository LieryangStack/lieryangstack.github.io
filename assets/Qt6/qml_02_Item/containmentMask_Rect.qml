import QtQuick
import QtQuick.Shapes

Rectangle {
    id: circle
    width: 100; height: width
    radius: width / 2
    color: tapHandler.pressed ? "tomato" : hoverHandler.hovered ? "darkgray" : "lightgray"

    TapHandler { id: tapHandler }
    HoverHandler { id: hoverHandler }

    /* 设定可以响应鼠标事件的区域 */
    containmentMask: Rectangle {
      x: 10; y: 10
      width: 50; height: 50
      color: "green"
    }

    Rectangle {
      x: 10; y: 10
      width: 50; height: 50
      color: "green"
    }
}

