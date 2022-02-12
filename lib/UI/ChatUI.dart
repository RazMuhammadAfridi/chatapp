import 'package:chatapp/controller/MessangerController.dart';
import 'package:chatapp/widgets/Textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/chatBubble.dart';

class ChatUI extends StatelessWidget {
  final Messenger_Ctr MessengerCtr = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 6, 112, 126),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Saif afridi'),
              Text(
                'online ',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 231, 230, 226),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * .95,
              child: Obx(() => ListView.builder(
                  itemCount: MessengerCtr.Message.length,
                  itemBuilder: (context, index) {
                    return Container(child: chatBubble(index));
                  })),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.all(5), child: textFieldWhatsaap()))
          ],
        ));
  }
}
