import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

GridLayout {
    id: maingrid
    objectName: "maingrid"
    columns: 2

    Label {
        id: lblProject
        text: qsTr("Project")
    }

    ComboBox {
        id: cmbProject
        objectName: "project"
        Layout.fillWidth: true
        model: projectModel
        textRole: "name"
    }

    Label {
        id: lblTracker
        text: qsTr("Tracker")
    }

    ComboBox {
        id: cmbTracker
        objectName: "tracker"
        Layout.fillWidth: true
        model: trackerModel
        textRole: "name"
        enabled: false
    }

    Label {
        id: lblSubject
        text: qsTr("Subject")
    }

    TextField {
        id: txtSubject
        Layout.fillWidth: true
        objectName: "subject"
        enabled: false
        focus: true
    }

    Label {
        id: lblParentIssue
        text: qsTr("Parent issue")
    }

    RowLayout {
        Layout.fillWidth: true

        TextField {
            id: txtParentIssue
            Layout.fillWidth: true
            objectName: "parentIssue"
            enabled: false
        }

        Button {
            id: btnUseCurrentIssue
            Layout.preferredHeight: 24
            Layout.preferredWidth: 24
            objectName: "useCurrentIssue"
            iconSource: "qrc:/open-iconic/svg/vertical-align-bottom.svg"
            tooltip: qsTr("Use the last tracked issue as parent issue")
            enabled: false
        }

        Button {
            id: btnUseCurrentIssueParent
            Layout.preferredHeight: 24
            Layout.preferredWidth: 24
            objectName: "useCurrentIssueParent"
            iconSource: "qrc:/open-iconic/svg/vertical-align-top.svg"
            tooltip: qsTr("Use the last tracked issue's parent as parent issue (default)")
            enabled: false
        }

        Button {
            id: btnSelectParentIssue
            Layout.preferredHeight: 24
            Layout.preferredWidth: 24
            objectName: "selectParentIssue"
            iconSource: "qrc:/open-iconic/svg/list.svg"
            tooltip: qsTr("Select parent issue from list")
            enabled: false
        }
    }

    Label {
        id: lblAssignee
        text: qsTr("Assignee")
    }

    ComboBox {
        id: cmbAssignee
        objectName: "assignee"
        Layout.fillWidth: true
        model: assigneeModel
        textRole: "name"
        enabled: false
    }

    Label {
        id: lblCatgory
        text: qsTr("Category")
    }

    ComboBox {
        id: bmbCategory
        objectName: "category"
        Layout.fillWidth: true
        model: categoryModel
        textRole: "name"
        enabled: false
    }

    Label {
        id: lblTarget
        text: qsTr("Target version")
    }

    ComboBox {
        id: cmdVersion
        objectName: "version"
        Layout.fillWidth: true
        model: versionModel
        textRole: "name"
        enabled: false
    }

    Item {
        id: customFields
        objectName: "customFields"
        Layout.columnSpan: 2
        visible: false
    }

    Label {
        id: lblDueDate
        text: qsTr("Due date")
    }

    TextField {
        id: txtDueDate
        placeholderText: "2016-01-01"
        Layout.fillWidth: true
        objectName: "dueDate"
        enabled: false
    }

    Label {
        id: lblEstimatedDate
        text: qsTr("Estimated time")
    }

    TextField {
        id: txtEstimatedTime
        placeholderText: "02:00:00"
        Layout.fillWidth: true
        objectName: "estimatedTime"
        enabled: false
    }

    Label {
        id: lblDescription
        text: qsTr("Description")
    }

    TextArea {
        id: txtDescription
        Layout.minimumHeight: 100
        Layout.fillHeight: true
        Layout.fillWidth: true
        objectName: "description"
        enabled: false
    }

    RowLayout {
        id: rowLayout1
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.columnSpan: 2

        Button {
            id: btnCreate
            objectName: "create"
            text: qsTr("Create")
            enabled: false
            isDefault: true
        }

        Button {
            id: btnCancel
            objectName: "cancel"
            text: qsTr("Cancel")
        }
    }
}
