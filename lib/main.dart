import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screen/chat.dart';
import 'package:whatsapp/screen/status.dart';
import 'package:whatsapp/screen/whatsapp1.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Whatsapp(),
        'wp1':(context)=>Chats(),
        'wp2':(context)=>Status(),
      },
    ),
  );
}