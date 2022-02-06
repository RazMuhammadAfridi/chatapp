import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/MessangerController.dart';
import 'ChatUI.dart';

class UserListing extends StatelessWidget {
  final Messenger_Ctr msgCtr = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              Get.to(ChatUI());
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
    );
  }
}
