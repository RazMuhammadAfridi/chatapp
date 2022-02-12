import 'package:chatapp/controller/MessangerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget chatBubble(int index) {
  final Messenger_Ctr MessengerCtr = Get.find();
  return Row(
    mainAxisAlignment: MessengerCtr.UserName[index] == 'Bob'
        ? MainAxisAlignment.end
        : MainAxisAlignment.start,
    children: [
      CircleAvatar(
        child: Text(MessengerCtr.UserName[index].toString().characters.first),
      ),
      Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(maxWidth: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
              topLeft: Radius.circular(25)),
          color: Color.fromARGB(255, 246, 248, 248),
        ),
        child: Obx(
          () => Text(
            MessengerCtr.Message[index],
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 37, 35, 35)),
          ),
        ),
      ),
    ],
  );
}
