import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

ColumnLayout {
    id: columnLayout1
    x: 0
    y: 0
    width: 524
    height: 500
    spacing: 0

    TabView {
        id: tabSettings
        x: 2
        y: 0
        width: 520
        tabPosition: 1
        Layout.preferredWidth: -1
        Layout.rowSpan: 0
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.columnSpan: 0
        Layout.leftMargin: 0
        currentIndex: 0
        Layout.fillHeight: true
        Layout.fillWidth: true
        frameVisible: false

        Tab {
            id: tabConnection
            y: 0
            clip: false
            visible: true
            scale: 1
            title: qsTr("Connection")
            active: true

            GridLayout {
                id: gridLayout3
                y: 0
                anchors.fill: parent
                columns: 2

                Item {
                    // Spacer
                    height: 15
                    Layout.columnSpan: 2
                }

                Label {
                    id: lblConnectionURL
                    text: qsTr("Redmine connection URL")
                }

                TextField {
                    id: url
                    Layout.fillWidth: true
                    objectName: "url"
                    placeholderText: qsTr("https://redmine.site.url")
                }

                Label {
                    id: lblAPIKey
                    text: qsTr("Redmine API key")
                }

                TextField {
                    id: apikey
                    Layout.fillWidth: true
                    objectName: "apikey"
                    placeholderText: qsTr("4466f8177f6653e1b179f08fbad36e631f15b316")
                }

                Label {
                    id: lblMaxRecentIssues
                    text: qsTr("Maximum recent issues")
                }

                TextField {
                    id: numRecentIssues
                    Layout.fillWidth: true
                    objectName: "numRecentIssues"
                    placeholderText: qsTr("10 (-1: indefinitely)")
                }

                Label {
                    id: lblWorkedIssueStatus
                    text: qsTr("Worked on issue status")
                }

                ComboBox {
                    id: workedOn
                    enabled: false
                    Layout.fillWidth: true
                    objectName: "workedOn"
                    model: issueStatusModel
                    textRole: "name"
                }

                Label {
                    id: lblDefaultTracker
                    text: qsTr("Default tracker")
                }

                ComboBox {
                    id: defaultTracker
                    enabled: false
                    Layout.fillWidth: true
                    objectName: "defaultTracker"
                    model: trackerModel
                    textRole: "name"
                }

                CheckBox {
                    id: startLocalServer
                    objectName: "startLocalServer"
                    text: qsTr("Start a local socket server")
                    Layout.columnSpan: 2
                }

                CheckBox {
                    id: useCustomFields
                    objectName: "useCustomFields"
                    text: qsTr("Use custom fields (requires 'redmine_shared_api' plugin)")
                    Layout.columnSpan: 2
                }

                Label {
                    id: lblExternalIDField
                    text: qsTr("\tExternal ID field")
                }

                ComboBox {
                    id: externalId
                    enabled: false
                    Layout.fillWidth: true
                    objectName: "externalId"
                    model: externalIdModel
                    textRole: "name"
                }

                Label {
                    id: lblStartTimeField
                    text: qsTr("\tStart time field")
                }

                ComboBox {
                    id: startTime
                    enabled: false
                    Layout.fillWidth: true
                    objectName: "startTime"
                    model: startTimeModel
                    textRole: "name"
                }

                Label {
                    id: lblEndTimeField
                    text: qsTr("\tEnd time field")
                }

                ComboBox {
                    id: endTime
                    enabled: false
                    Layout.fillWidth: true
                    objectName: "endTime"
                    model: endTimeModel
                    textRole: "name"
                }

                Label {
                    id: lblDateTimeFormat
                    text: qsTr("\tDate and time format")
                }

                TextField {
                    id: txtDateTimeFormat
                    enabled: false
                    Layout.fillWidth: true
                    objectName: "dateTimeFormat"
                    placeholderText: qsTr("yyyy-MM-ddThh:mm:ss")
                }

                Label {
                    id: lblUseTimeZone
                    text: qsTr("\tUse timezone")
                }

                CheckBox {
                    id: cbUseTimeZone
                    enabled: false
                    objectName: "useTimeZone"
                    Layout.fillWidth: false
                    checked: false
                }

                CheckBox {
                    id: ignoreSslErrors
                    objectName: "ignoreSslErrors"
                    text: qsTr("Ignore SSL errors")
                    Layout.columnSpan: 2
                }

                Item {
                    // Spacer
                    Layout.fillHeight: true
                }
            }
        }

        Tab {
            id: tabShortcuts
            title: qsTr("Shortcuts")
            visible: false
            active: true

            GridLayout {
                id: gridLayout2
                anchors.fill: parent
                columns: 2

                Item {
                    // Spacer
                    height: 15
                    Layout.columnSpan: 2
                }

                Label {
                    id: lblShowHide
                    text: qsTr("Shortcut to show/hide RedTimer")
                }

                TextField {
                    id: shortcutToggle
                    Layout.fillWidth: true
                    objectName: "shortcutToggle"
                    placeholderText: qsTr("Ctrl+Alt+R")
                }

                Label {
                    id: lblStartStop
                    text: qsTr("Shortcut to start/stop RedTimer")
                }

                TextField {
                    id: shortcutStartStop
                    Layout.fillWidth: true
                    objectName: "shortcutStartStop"
                    placeholderText: qsTr("Ctrl+Alt+S")
                }

                Label {
                    id: lblCreateTask
                    text: qsTr("Shortcut to create an issue")
                }

                TextField {
                    id: shortcutCreateIssue
                    Layout.fillWidth: true
                    objectName: "shortcutCreateIssue"
                    placeholderText: qsTr("Ctrl+Alt+C")
                }

                Label {
                    id: lblLoadIssue
                    text: qsTr("Shortcut to load an issue")
                }

                TextField {
                    id: shortcutSelectIssue
                    Layout.fillWidth: true
                    objectName: "shortcutSelectIssue"
                    placeholderText: qsTr("Ctrl+Alt+L")
                }

                Item {
                    // Spacer
                    Layout.fillHeight: true
                }
            }
        }

        Tab {
            id: tabInterface
            y: 0
            height: 0
            title: qsTr("Interface")
            active: true

            ColumnLayout {
                id: columnLayout2
                anchors.fill: parent

                Item {
                    // Spacer
                    height: 15
                }

                CheckBox {
                    id: useSystemTrayIcon
                    enabled: Qt.platform.os != "osx"
                    objectName: "useSystemTrayIcon"
                    text: qsTr("Use system tray icon")
                }

                CheckBox {
                    id: closeToTray
                    enabled: Qt.platform.os != "osx"
                    objectName: "closeToTray"
                    text: qsTr("Hide window instead of closing it")
                }

                Item {
                    // Spacer
                    Layout.fillHeight: true
                }
            }
        }
    }

    RowLayout {
        y: 460
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignCenter

        Button {
            id: btnSave
            objectName: "save"
            text: qsTr("&Save")
            isDefault: true
        }

        Button {
            id: btnApply
            objectName: "apply"
            text: qsTr("A&pply")
        }

        Button {
            id: btnCancel
            objectName: "cancel"
            text: qsTr("&Cancel")
        }
    }
}
