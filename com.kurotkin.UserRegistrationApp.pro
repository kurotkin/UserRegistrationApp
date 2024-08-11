TARGET = com.kurotkin.UserRegistrationApp

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/RegPage.qml \
    rpm/com.kurotkin.UserRegistrationApp.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/com.kurotkin.UserRegistrationApp.ts \
    translations/com.kurotkin.UserRegistrationApp-ru.ts \
