import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'NajumMessenger.dart';
import 'UI/UsersListing.dart';
import 'button.dart';
import 'controller/MessangerController.dart';


class uiOne extends StatelessWidget {
  final Messenger_Ctr c = Get.put(Messenger_Ctr());
  var Messenger = new NajumMessenger().MessengerLoad();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: UserListing(),
        ),
      ),
    );
  }
}
