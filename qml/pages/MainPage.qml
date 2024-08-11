import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("UserRegistration")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter

                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }

    Column{
        anchors.centerIn: parent
        width: parent.width - 2 * Theme.horizontalPageMargin
        TextField {
            width: parent.width
            placeholderText: qsTr("login")
            label: qsTr("login")
            acceptableInput: text.length > 3
            EnterKey.enabled: !errorHighlight
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.onClicked: textArea.focus = true
        }
        TextField {
            width: parent.width
            placeholderText: qsTr("phone number")
            label: qsTr("phone number")
            validator: RegExpValidator { regExp: /^[0-9\+\-#\*\ ]{3,}$/ }
            inputMethodHints: ImhDialableCharactersOnly
            EnterKey.enabled: !errorHighlight
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.onClicked: textArea.focus = true
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Регистрация пользователя")
            onClicked: {
                pageStack.push(Qt.resolvedUrl("RegPage.qml"))
            }
        }
    }
}
