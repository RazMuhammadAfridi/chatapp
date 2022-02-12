import 'package:get/get.dart';

class Messenger_Ctr extends GetxController {
  var UserName = ['Saif'].obs;
  var Message = ['hello'].obs;

  brodcastMessage(String name, String message) {
    //  this.UserName.add(name);

    this.Message.add(message);
    this.UserName.add(name);
    print(Message);
  }
}
