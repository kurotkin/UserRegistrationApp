import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    SilicaFlickable {
        id: flickable
        anchors.fill: parent
        contentWidth: column.width; contentHeight: column.height

        Column{
            anchors.centerIn: parent
            width: parent.width - 2 * Theme.horizontalPageMargin
            TextField {
                width: parent.width
                placeholderText: qsTr("Фамилия")
                label: qsTr("Фамилия")
                validator: strictValidation
                EnterKey.enabled: !errorHighlight
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: textArea.focus = true
            }
            TextField {
                width: parent.width
                placeholderText: qsTr("Имя")
                label: qsTr("Имя")
                validator: strictValidation
                EnterKey.enabled: !errorHighlight
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: textArea.focus = true
            }
            TextField {
                width: parent.width
                placeholderText: qsTr("Отчество")
                label: qsTr("Фамилия")
                validator: strictValidation
                EnterKey.enabled: !errorHighlight
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: textArea.focus = true
            }
            TextField {
                width: parent.width
                placeholderText: qsTr("Email")
                label: qsTr("Email")
                inputMethodHints: Qt.ImhEmailCharactersOnly
                validator: strictValidation
                EnterKey.enabled: !errorHighlight
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: textArea.focus = true
            }
            Label {
                width: parent.width
                text: qsTr("Интересы пользователя:")
                font.pixelSize: Theme.fontSizeSmallBase
            }
            TextSwitch {
                width: page.width
                text: "Музыка"
            }
            TextSwitch {
                width: page.width
                text: "Фильмы"
            }
            TextSwitch {
                width: page.width
                text: "Игры"
            }
            TextSwitch {
                width: page.width
                text: "Путишествия"
            }
            SectionHeader {
                objectName: "licenseHeader"
                text: qsTr(" ")
            }


            TextSwitch {
                width: page.width
                text: "Согласен"
                description: qsTr("на обработку персональных данных")
            }
            TextSwitch {
                width: page.width
                text: "Согласен"
                description: qsTr("Согласен на рассылку новостей")
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Зарегистрироваться")
                onClicked: {

                }
            }
        }

    }
}
