import 'dart:io';

import 'package:chatapp/controller/MessangerController.dart';
import 'package:get/get.dart';
import 'package:http/io_client.dart';
import 'package:chatapp/signalr_core.dart';

class NajumMessenger {
  final Messenger_Ctr c = Get.find();
  Future<void> MessengerLoad() async {
    final connection = HubConnectionBuilder()
        .withUrl(
            'http://chat.najumsons.com/chathub',
            HttpConnectionOptions(
              client: IOClient(
                  HttpClient()..badCertificateCallback = (x, y, z) => true),
              logging: (level, message) => print(message),
            ))
        .build();

    connection.on('ReceiveMessage', (message) {
      print(message.toString());
      //  c.message.value = message.user

      c.brodcastMessage(message?[0], message?[1]);
    });

    await connection.start();

    await connection.invoke('SendMessage', args: ['Bob', 'Says hi !']);
  }
}
