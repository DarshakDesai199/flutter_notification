import 'package:flutter/material.dart';
import 'package:flutter_notification/constant/app_notification.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _message = TextEditingController();
  String token =
      "ctktlE4sS8OhCkFGmtvzPB:APA91bE2IdD_KTYOW2yTkjTJVjI9z8PcU5mbx35KcUHjU_LGSg4hTnJj89ISrIDD3OCxpbnTDa0I8oYua7zwJ9qwkAYnsuYHohvbn3xh0niq0P8nRHQpEoIhznbk24Gx3_-tebMfsq4d";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: Get.width - 50,
                child: TextFormField(
                  controller: _message,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
                onPressed: () {
                  AppNotificationHandler.sendMessage(
                      msg: _message.text, receiverFcmToken: token);
                },
                child: Text("Send Notification"))
          ]),
    );
  }
}
