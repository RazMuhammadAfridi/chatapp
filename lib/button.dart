import 'package:chatapp/controller/MessangerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mybutton extends StatelessWidget {
  final Messenger_Ctr c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (() => {}),
          icon: Icon(Icons.place),
        ),
        IconButton(
          onPressed: (() => {c.brodcastMessage('raz here..', 'hhi')}),
          icon: Icon(Icons.camera),
        ),
      ],
    );
  }
}
