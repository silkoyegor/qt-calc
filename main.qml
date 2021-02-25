import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    minimumWidth: _appWidth
    minimumHeight: _appHeight
    visible: true
    title: qsTr("Simple calculator")


    /*-------------------------- propertys -------------------------*/
    /*--------------------------------------------------------------*/

    property int _appWidth: 400
    property int _appHeight: 240
    property int _buttonWidth: _appWidth / 4



    /*-------------------------- functions -------------------------*/
    /*--------------------------------------------------------------*/

    function validateCalcStr(str)
    {
        console.log(str);

        // TODO: add to RegExp validations:
        // '.' between number
        // '-' before number

        if(str.match("^[1-9]+[*/+-]{1}[1-9]+[=]$")) // this is good reason to start calculate
            console.log("calculating...");
    }


    /*----------------------------- gui ----------------------------*/
    /*--------------------------------------------------------------*/

    Column
    {

        spacing: 2
        anchors.centerIn: parent

        Row
        {


            TextField
            {
                width: _appWidth
                id: id_txtField

                hoverEnabled: false
                onTextChanged: validateCalcStr(id_txtField.text);
            }

        }

        Row
        {

            Button
            {
                width: _buttonWidth
                text: "7"
                onClicked: id_txtField.text += '7'
            }

            Button
            {
                width: _buttonWidth
                text: "8"
                onClicked: id_txtField.text += '8'
            }

            Button
            {
                width: _buttonWidth
                text: "9"
                onClicked: id_txtField.text += '9'
            }

            Button
            {
                width: _buttonWidth
                text: "/"
                onClicked: id_txtField.text += '/'
            }
        }

        Row
        {

            Button
            {
                width: _buttonWidth
                text: "4"
                onClicked: id_txtField.text += '4'
            }

            Button
            {
                width: _buttonWidth
                text: "5"
                onClicked: id_txtField.text += '5'
            }

            Button
            {
                width: _buttonWidth
                text: "6"
                onClicked: id_txtField.text += '6'
            }

            Button
            {
                width: _buttonWidth
                text: "*"
                onClicked: id_txtField.text += '*'
            }
        }

        Row
        {

            Button
            {
                width: _buttonWidth
                text: "1"
                onClicked: id_txtField.text += '1'
            }

            Button
            {
                width: _buttonWidth
                text: "2"
                onClicked: id_txtField.text += 2
            }

            Button
            {
                width: _buttonWidth
                text: "3"
                onClicked: id_txtField.text += 3
            }

            Button
            {
                width: _buttonWidth
                text: "-"
                onClicked: id_txtField.text += '-'
            }
        }

        Row
        {

            Button
            {
                width: _buttonWidth * 2
                text: "0"
                onClicked: id_txtField.text += '0'
            }


            Button
            {
                width: _buttonWidth
                text: "."
                onClicked: id_txtField.text += '.'
            }

            Button
            {
                width: _buttonWidth
                text: "+"
                onClicked: id_txtField.text += '+'
            }
        }

        Row
        {

            Button
            {
                width: _appWidth
                text: "="
                onClicked: id_txtField.text += '='
            }
        }
    }
}
