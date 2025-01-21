cmake_minimum_required(VERSION 3.16)
project(GenericInfotainmentExample VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt5 Qt6 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Gui Quick )

qt_standard_project_setup()

qt_add_executable(GenericInfotainmentExample WIN32 MACOSX_BUNDLE
    main.cpp
)
target_link_libraries(GenericInfotainmentExample PRIVATE
    Qt::Core
    Qt::Gui
    Qt::Quick
    # Qt::Core5Compat
)


# Resources:
set(qml_resource_files
    "GridOne.qml"
    "GridTwo.qml"
    "StackViewPage.qml"
    "StationPage.qml"
    "StatusBar.qml"
    "background.jpg"
    "gridOne-1.png"
    "main.qml"
)

qt_add_resources(GenericInfotainmentExample "qml"
    PREFIX
        "/"
    FILES
        ${qml_resource_files}
)

install(TARGETS GenericInfotainmentExample
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET GenericInfotainmentExample
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
