import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../NajumMessenger.dart';

class textFieldWhatsaap extends StatefulWidget {
  @override
  State<textFieldWhatsaap> createState() => _textFieldWhatsaapState();
}

class _textFieldWhatsaapState extends State<textFieldWhatsaap> {
  final _textFieldController = TextEditingController();
  var Messenger = new NajumMessenger();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: TextField(
                  onChanged: (value) => {setState(() {})},
                  controller: _textFieldController,
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Message',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.transparent,
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 30,
                            child: IconButton(
                                onPressed: () {},
                                alignment: Alignment.center,
                                icon: Icon(Icons.attach_file_outlined)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt_outlined))
                        ],
                      )),
                ))),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 25,
            child: IconButton(
              alignment: Alignment.center,
              onPressed: () {
                if (_textFieldController.text.characters.length <= 0) {
                  print('Recording sended');
                } else {
                  Messenger.sendMessage(_textFieldController.text);
                  _textFieldController.clear();
                }

                print(_textFieldController.text.characters.length);
              },
              icon: _textFieldController.text.characters.length <= 0
                  ? Icon(
                      Icons.mic,
                      size: 25,
                      color: Colors.white,
                    )
                  : FaIcon(
                      FontAwesomeIcons.paperPlane,
                      size: 25,
                      color: Colors.white,
                    ),
            )),
      ],
    );
    // return Scaffold(
    //   body: Center(
    //     child: Row(
    //       children: [
    //         Container(
    //           height: 60,
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.all(Radius.circular(30)),
    //               color: Colors.deepPurpleAccent,
    //               border: Border.all(color: Colors.black, width: 1)),
    //           child: Container(
    //             decoration: BoxDecoration(),
    //             child: new TextField(
    //               controller: _textFieldController,
    //               decoration: InputDecoration(
    //                 hintText: "Type Something...",
    //                 hintStyle: TextStyle(color: Colors.white),
    //                 border: InputBorder.none,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    // body: Container(
    //   margin: EdgeInsets.all(15.0),
    //   height: 61,
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: Container(
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.circular(35.0),
    //             // boxShadow: [
    //             //   BoxShadow(
    //             //       offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
    //             // ],
    //           ),
    //           child: Row(
    //             children: [
    //               // IconButton(
    //               //     icon: Icon(
    //               //       Icons.face,
    //               //       color: Colors.blueAccent,
    //               //     ),
    //               //     onPressed: () {}),
    //               //Expanded(
    //               Container(
    //                 child: TextField(
    //                   controller: _textFieldController,
    //                   //   decoration: InputDecoration(
    //                   //       hintText: "Type Something...",
    //                   //       hintStyle: TextStyle(color: Colors.blueAccent),
    //                   //       border: InputBorder.none),
    //                 ),
    //               ),
    //               // IconButton(
    //               //   icon: Icon(Icons.photo_camera, color: Colors.blueAccent),
    //               //   onPressed: () {},
    //               // ),
    //               // IconButton(
    //               //   icon: Icon(Icons.attach_file, color: Colors.blueAccent),
    //               //   onPressed: () {},
    //               // )
    //             ],
    //           ),
    //         ),
    //       ),
    //       SizedBox(width: 15),
    //       // Container(
    //       //   padding: const EdgeInsets.all(15.0),
    //       //   decoration:
    //       //       BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
    //       //   child: InkWell(
    //       //     child: Icon(
    //       //       Icons.keyboard_voice,
    //       //       color: Colors.white,
    //       //     ),
    //       //     onLongPress: () {},
    //       //   ),
    //       // )
    //     ],
    //   ),
    // ),
  }
}
