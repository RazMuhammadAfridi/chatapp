import 'package:chatapp/controller/MessangerController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatUI extends StatelessWidget {
  final Messenger_Ctr MessengerCtr = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => ListView.builder(
            itemCount: MessengerCtr.Message.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * .7,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                  color: Colors.deepPurpleAccent,
                ),
                child: Obx(() => Text(
                      MessengerCtr.Message[index],
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              );
            })));
  }
}
