import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

ColumnLayout {
    id: columnLayout1

    property alias issues: lvIssues
    property alias project: cmbProject
    property alias search: txtSearch
    property alias assignee: cmbAssignee

    ComboBox {
        id: cmbProject
        Layout.fillWidth: true
        objectName: "project"
        model: projectModel
        textRole: "name"
    }

    ComboBox {
        id: cmbAssignee
        Layout.fillWidth: true
        objectName: "assignee"
        model: assigneeModel
        textRole: "name"
    }

    ComboBox {
        id: cmvVersion
        Layout.fillWidth: true
        objectName: "version"
        model: versionModel
        textRole: "name"
    }

    TextField {
        id: txtSearch
        objectName: "search"
        Layout.fillWidth: true
        placeholderText: qsTr("Search in issue list")
        focus: true
    }

    ListView {
        id: lvIssues
        boundsBehavior: Flickable.StopAtBounds
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        clip: enabled
        objectName: "issues"
        model: issuesModel

        signal activated(int index)

        delegate: issueDelegate

        highlight: Rectangle {
            color: "lightsteelblue"
            radius: 5
        }

        Layout.minimumHeight: 300
        Layout.fillWidth: true
        Layout.fillHeight: true
    }
}
