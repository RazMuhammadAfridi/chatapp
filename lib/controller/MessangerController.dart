import 'package:get/get.dart';

class Messenger_Ctr extends GetxController {
  var UserName = ['Saif'].obs;
  var Message = ['hello'].obs;

  brodcastMessage(String UserName, String Message) {
    this.UserName.add(UserName);
    this.Message.add(Message);
  }
}
