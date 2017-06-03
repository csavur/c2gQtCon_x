// ekke (Ekkehard Gentz) @ekkescorner
import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtGraphicalEffects 1.0

import "../common"

Flickable {
    id: flickable
    // index to get access to Loader (Destination)
    property int myIndex: index
    contentHeight: root.implicitHeight
    // StackView manages this, so please no anchors here
    // anchors.fill: parent
    property string name: "About"

    Pane {
        id: root
        anchors.fill: parent
        ColumnLayout {
            anchors.right: parent.right
            anchors.left: parent.left

            RowLayout {
            }

            RowLayout {

            }

            RowLayout {
                LabelSubheading {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("This application developted by Celal Savur.\n")
                }
            }

            RowLayout {
                LabelSubheading {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("c.savur@gmail.com")
                }
            }

            RowLayout {
                LabelSubheading {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Thanks for using, I would like thanks to Ekke to allow me modify his source code.")
                }
            }

            HorizontalDivider {}
            RowLayout {

            }

            RowLayout {
                LabelSubheading {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Originaly forked from Ekke's github repository.")
                }
            }

            RowLayout {
                LabelSubheading {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("https://github.com/ekke/c2gQtCon_x")
                }
            }

            RowLayout {
                LabelBodySecondary {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Thanks for great Design of APP Icons and (iOS)-Splashscreen by 'Diana de Sousa, qt.io'")
                }
            }
            RowLayout {
                LabelBodySecondary {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Thanks J-P Nurmi, Mitch Curtis and others @qt.io for help, bug-fixing and inspirations.")
                }
            }
        } // col layout
    } // root
    ScrollIndicator.vertical: ScrollIndicator { }

    // emitting a Signal could be another option
    Component.onDestruction: {
        cleanup()
    }

    // called immediately after Loader.loaded
    function init() {
        console.log("Init done from ABOUT")
    }
    // called from Component.destruction
    function cleanup() {
        console.log("Cleanup done from ABOUT")
    }
} // flickable
