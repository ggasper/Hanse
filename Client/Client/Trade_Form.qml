import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import trade.backend 1.0


/************************************************************************************************************************
*                                                   I have never thought                                                *
*                                                   I'd live to see the day                                             *
*                                                   when my code looks so bad                                           *
*                                                   it makes me cry                                                     *
*                                                                        -Matjaz                                        *
*                                                                                                                       *
************************************************************************************************************************/

Image{
    id:tfp
    anchors.centerIn: parent
    height: parent.height /3.5
    width: parent.width /1.2
    function check_resources(){
        var food = Number(food_resource.text);
        var wood = Number(wood_resource.text);
        var stone = Number(stone_resource.text);
        var iron = Number(iron_resource.text);

        var back_food = Number(backend.foodRes);
        var back_wood = Number(backend.woodRes);
        var back_stone = Number(backend.stoneRes);
        var back_iron = Number(backend.ironRes);

        if (back_food < food || food < 0)
        {
            food_resource.text="0";
        }
        if (back_wood < wood || wood < 0)
        {
            wood_resource.text="0";
        }
        if (back_stone < stone || stone < 0)
        {
            stone_resource.text="0";
        }
        if (back_iron < iron || iron < 0)
        {
            iron_resource.text="0";
        }
    }
    Rectangle{
        height: parent.height
        width: parent.width

        color: "Black"
        Item {
            id: tf
            width: parent.width
            height: parent.height
            TextField
            {
                id: stone
                height: tf.height / 8.2
                width: tf.width / 6
                readOnly: true
                text: "Stone"
                anchors.topMargin: 10
                anchors.right: blank.right
                anchors.top: blank.bottom
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: iron
                height: tf.height / 8.2
                width: tf.width / 6
                text: "Iron"
                readOnly: true
                anchors.top: stone.bottom
                anchors.topMargin: 10
                anchors.left: blank.left
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: wood
                height: tf.height / 8.2
                width: tf.width / 6
                text: "Wood"
                readOnly: true
                anchors.top: iron.bottom
                anchors.topMargin: 10
                anchors.left: blank.left
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: food
                height: tf.height / 8.2
                width: tf.width / 6
                text: "Food"
                readOnly: true
                anchors.top: wood.bottom
                anchors.topMargin: 10
                anchors.left: blank.left
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: stone_sent
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: offer.left
                anchors.top: offer.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("stoneOffered", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: iron_sent
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: stone_sent.left
                anchors.top: stone_sent.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("ironOffered", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: wood_sent
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: iron_sent.left
                anchors.top: iron_sent.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("woodOffered", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: food_sent
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: wood_sent.left
                anchors.top: wood_sent.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("foodOffered", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: stone_requested
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: resource.left
                anchors.top: resource.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("stoneRequested", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: iron_requested
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: stone_requested.left
                anchors.top: stone_requested.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("ironRequested", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: wood_requested
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: iron_requested.left
                anchors.top: iron_requested.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("woodRequested", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: food_requested
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: wood_requested.left
                anchors.top: wood_requested.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("foodRequested", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: stone_resource
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: request.left
                anchors.top: request.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("stoneGiven", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: iron_resource
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: stone_resource.left
                anchors.top: stone_resource.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("ironGiven", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: wood_resource
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: iron_resource.left
                anchors.top: iron_resource.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("woodGiven", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: food_resource
                height: tf.height / 8.2
                width: tf.width / 6
                anchors.margins: 10
                anchors.leftMargin: 0
                anchors.left: wood_resource.left
                anchors.top: wood_resource.bottom
                validator: IntValidator{
                    bottom: 0
                    top: 999999
                }
                selectByMouse: true
                onTextChanged: backend.setTradeProperty("foodGiven", text)
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: blank
                height: tf.height / 8.2
                width: tf.width / 6
                visible: false
                anchors.leftMargin: 10
                anchors.topMargin: 10
                anchors.rightMargin: 10
                anchors.bottomMargin: 10
                enabled: false
                anchors.right: resource.left
                anchors.top: tf.top
            }
            TextField
            {
                id: offer
                height: tf.height / 8.2
                width: tf.width / 6
                text: "Your offer"
                readOnly: true
                anchors.margins: 10
                anchors.right: request.left
                anchors.top: tf.top
                color: "Green"
                opacity: 1000
            }
          TextField
            {
                id: request
                height: tf.height / 8.2
                width: tf.width / 6
                text: "Ammount of sent resources"
                readOnly: true
                anchors.margins: 10
                anchors.right: blank.left
                anchors.top: tf.top
                color: "Green"
                opacity: 1000
            }
            TextField
            {
                id: resource
                height: tf.height / 8.2
                width: tf.width / 6
                text: "Desired resources"
                readOnly: true
                anchors.margins: 10
                anchors.right: tf.right
                anchors.top: tf.top
                color: "Green"
                opacity: 1000
            }
            Button{
                id: clear
                height: tf.height / 8.2
                width: tf.width / 6
                text: "CLEAR"
                anchors.right: send.left
                anchors.top: send.top
                anchors.margins: 10
                anchors.topMargin: 0
                MouseArea {
                    anchors.fill: clear
                    onClicked: {
                        backend.clearTrade()
                        stone_sent.clear()
                        food_sent.clear()
                        iron_sent.clear()
                        wood_sent.clear()
                        stone_requested.clear()
                        food_requested.clear()
                        iron_requested.clear()
                        wood_requested.clear()
                        stone_resource.clear()
                        iron_resource.clear()
                        wood_resource.clear()
                        food_resource.clear()
                    }
                }
            }
            Button{
                id: send
                height: tf.height / 8.2
                width: tf.width / 6
                text: "TRADE"
                anchors.right: food_resource.right
                anchors.top: food_resource.bottom
                anchors.topMargin: 10;

                MouseArea {
                    anchors.fill: send
                    onClicked: {
                        tfp.check_resources()
                        backend.sendTrade()
                        tfp.visible=false;
                        stone_sent.clear()
                        food_sent.clear()
                        iron_sent.clear()
                        wood_sent.clear()
                        stone_requested.clear()
                        food_requested.clear()
                        iron_requested.clear()
                        wood_requested.clear()
                        stone_resource.clear()
                        iron_resource.clear()
                        wood_resource.clear()
                        food_resource.clear()
                    }
                }
            }
            Button{
                id: close
                height: tfp.height /8.2
                width: tfp.width /4.3
                text: "CLOSE"
                anchors.left: send.right
                anchors.top: send.top
                anchors.margins: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                MouseArea {
                    anchors.fill: close;
                    onClicked: {
                        tfp.visible = false
                    }
                }
            }
Item{
    id: rf
    height: parent.height/1.4
    width: parent.width/3.5
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.topMargin: 10
    anchors.leftMargin: 10
                TextField{
                 id: yr
                 readOnly: true
                 height: rf.height /4
                 width: rf.width /1
                 text: "Your resources"
                 anchors.top: parent.top
                 anchors.left: parent.left
                }
                TextField{
                    readOnly: true
                    id: food_rf
                    height: rf.height /4
                    width: rf.width /2
                    text: "FOOD:"
                    anchors.top: yr.bottom
                    anchors.left: yr.left
                }
                TextField{
                    readOnly: true
                    id: wood_rf
                    height: rf.height /4
                    width: rf.width /2
                    text: "WOOD:"
                    anchors.top: food_rf.bottom
                    anchors.left: parent.left
                }
                TextField{
                    readOnly: true
                    id: stone_rf
                    height: rf.height /4
                    width: rf.width /2
                    text: "STONE:"
                    anchors.top: wood_rf.bottom
                    anchors.left: parent.left
                }
                TextField{
                    readOnly: true
                    id: iron_rf
                    height: rf.height /4
                    width: rf.width /2
                    text: "IRON:"
                    anchors.top: stone_rf.bottom
                    anchors.left: parent.left
                }
                TextField{
                    readOnly: true
                    id: food_ammount
                    height: rf.height /4
                    width: rf.width /2
                    text: backend.foodRes
                    anchors.top: food_rf.top
                    anchors.left: food_rf.right
                }
                TextField{
                    readOnly: true
                    id: wood_ammount
                    height: rf.height /4
                    width: rf.width /2
                    text: backend.woodRes
                    anchors.top: food_ammount.bottom
                    anchors.left: food_ammount.left
                }
                TextField{
                    readOnly: true
                    id: stone_ammount
                    height: rf.height /4
                    width: rf.width /2
                    text: backend.stoneRes
                    anchors.top: wood_ammount.bottom
                    anchors.left: wood_ammount.left
                }
                TextField{
                    readOnly: true
                    id: iron_ammount
                    height: rf.height /4
                    width: rf.width /2
                    text: backend.ironRes
                    anchors.top: stone_ammount.bottom
                    anchors.left: stone_ammount.left
             }   }
            }
        }
    }

