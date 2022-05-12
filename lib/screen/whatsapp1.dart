import 'package:flutter/material.dart';
import 'package:whatsapp/screen/chat.dart';
import 'package:whatsapp/screen/status.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Whatsapp",
              style: TextStyle(color: Colors.grey),
            ),
            actions: [
              IconButton(onPressed: (){},
                icon: Icon(
                    Icons.search_sharp
                ),
              ),PopupMenuButton(itemBuilder: (context){
                return [
                  PopupMenuItem(child: Text("New group")),
                  PopupMenuItem(child: Text("New brodcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Starred messages")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              })
            ],
            backgroundColor: Colors.blueGrey.shade900,
            bottom: TabBar(
              tabs: [
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
          ),
          body: Container(
            color: Colors.black12,
             child: TabBarView(
               children: [
                 Chats(),
                 Status(),
                 Chats(),
               ],
             ),
            ),
        ),
      ),
    );
  }
}
