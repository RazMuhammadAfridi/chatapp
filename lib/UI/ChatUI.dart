import 'package:chatapp/controller/MessangerController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatUI extends StatelessWidget {
  final Messenger_Ctr MessengerCtr = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1)),
            child: Obx(() => Text(MessengerCtr.Message[0])),
          )
        ],
      ),
    );
  }
}
