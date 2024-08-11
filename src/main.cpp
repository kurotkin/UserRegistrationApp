#include <auroraapp.h>
#include <QtQuick>

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
    application->setOrganizationName(QStringLiteral("com.kurotkin"));
    application->setApplicationName(QStringLiteral("UserRegistrationApp"));

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/UserRegistrationApp.qml")));
    view->show();

    return application->exec();
}