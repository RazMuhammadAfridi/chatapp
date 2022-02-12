import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../controller/MessangerController.dart';
import 'ChatUI.dart';

class UserListing extends StatelessWidget {
  final Messenger_Ctr msgCtr = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => {}, icon: Text('Edit')),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: FaIcon(
                FontAwesomeIcons.edit,
                size: 15,
              ))
        ],
        backgroundColor: Color.fromARGB(255, 6, 112, 126),
      ),
      body: Container(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(
                  ChatUI(),
                  transition: Transition.leftToRight,
                );
              },
              child: ListTile(
                leading: Obx(() => Container(
                      width: 60,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      child: Text(
                        msgCtr.UserName[0].characters.first.toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
                title: Obx(() => Text(msgCtr.UserName[0])),
                subtitle: Obx(() => Text(msgCtr.Message[0])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
