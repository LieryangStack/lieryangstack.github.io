

/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import CoffeeMachine 1.0

Item {
    id: root

    width: 768
    height: 768
    /* 首页，因为没有选择任何咖啡，会默认盖住咖啡里面的结构 */
    property alias questionVisible: question.visible
    property bool showLabels: true

    /* 显示咖啡名称Label的text属性 */
    property alias coffeeLabel: cappuccinoLabel.text

    property real sugarAmount: 2
    property real foamAmount: 1
    property real milkAmount: 4
    property real coffeeAmount: 4

    Rectangle {
        id: rectangle
        color: "#443224"
        anchors.fill: parent

        /* 咖啡杯子空杯子背景 */
        Image {
            id: background
            x: 12
            y: 170
            source: "images/cup_structure/cup_elements/coffee_cup_back.png"
        }

        /* 奶泡 */
        Item {
            id: foam
            x: 12
            width: 457
            anchors.topMargin: milk.anchors.topMargin - (root.foamAmount * 40)
            anchors.bottom: background.bottom
            anchors.top: background.top
            clip: true
            Image {
                anchors.bottom: parent.bottom
                source: "images/cup_structure/liquids/liquid_foam.png"
            }
        }

        /* 牛奶 */
        Item {
            id: milk
            x: 12
            width: 457
            anchors.topMargin: 400 - coffee.height - root.milkAmount * 15 + 20
            anchors.bottom: background.bottom
            anchors.top: background.top
            clip: true
            Image {
                source: "images/cup_structure/liquids/liquid_milk.png"
                anchors.bottom: parent.bottom
            }
        }

        /* 浓咖啡 */
        Item {
            id: coffee
            x: 12
            width: 457
            height: root.coffeeAmount * 40
            anchors.bottomMargin: 0
            anchors.bottom: background.bottom
            clip: true

            Image {
                anchors.bottom: parent.bottom
                source: "images/cup_structure/liquids/liquid_coffee.png"
            }
        }

        /* 杯子外轮廓 */
        Image {
            id: cupFront
            x: 11
            y: 170
            source: "images/cup_structure/cup_elements/coffee_cup_front.png"
        }

        Text {
            x: 499
            y: 370
            color: "#ffffff"
            text: qsTr("热牛奶")
            font.capitalization: Font.AllUppercase
            font.family: Constants.fontFamily
            wrapMode: Text.WrapAnywhere
            font.pixelSize: 18
            visible: root.showLabels
        }

        Text {
            x: 486
            y: 468
            color: "#ffffff"
            text: qsTr("浓缩咖啡")
            font.capitalization: Font.AllUppercase
            font.family: Constants.fontFamily
            wrapMode: Text.WrapAnywhere
            font.pixelSize: 18
            visible: root.showLabels
        }

        Image {
            x: 414
            y: 274
            visible: root.showLabels
            source: "images/ui_controls/line.png"
        }

        Text {
            x: 512
            y: 259
            color: "#ffffff"
            text: qsTr("奶泡")
            font.family: Constants.fontFamily
            wrapMode: Text.WrapAnywhere
            font.pixelSize: 18
            font.capitalization: Font.AllUppercase
            visible: root.showLabels
        }

        Image {
            x: 404
            y: 382
            source: "images/ui_controls/line.png"
            visible: root.showLabels
        }

        Image {
            x: 388
            y: 482
            source: "images/ui_controls/line.png"
            visible: root.showLabels
        }

        Text {
            id: cappuccinoLabel
            color: "#ffffff"
            text: qsTr("卡布奇诺咖啡")
            visible: !question.visible
            anchors.top: parent.top
            anchors.topMargin: 32
            anchors.left: parent.left
            anchors.leftMargin: Constants.defaultMargin
            font.family: Constants.fontFamily
            wrapMode: Text.WrapAnywhere
            font.pixelSize: 64
            font.capitalization: Font.AllUppercase
        }

        SugarItem {
            id: sugarItem
            x: 181
            y: 419
            sugarAmount: root.sugarAmount
        }
    }


    Image {
        id: question
        y: 170
        anchors.left: parent.left
        anchors.leftMargin: 11
        source: "images/cup_structure/coffee_cup_large.png"
    }
}



