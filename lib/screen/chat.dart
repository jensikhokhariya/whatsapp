import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List Name=[
    "Jensi",
    "Ridhi",
    "Sidhi",
    "Sneha",
    "Krinal",
    "Darshna",
    "Prriyanshi",
    "Priya",
    "Tanvi",
    "Bhumi",
    "Yatrika",
    "Ananya"
  ];

  List Ti=[
    "Today",
    "yesterdy",
    "10/05/2022",
    "10/05/2022",
    "10/05/2022",
    "09/05/2022",
    "09/05/2022",
    "09/05/2022",
    "09/05/2022",
    "08/05/2022",
    "07/05/2022",
    "06/05/2022"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade900,
          child: ListView.builder(
            itemCount:Name.length ,
              itemBuilder: (context,index){
              return Container(
                height: 70,
                width: 100,
                padding: EdgeInsets.all(15),
                color: Colors.grey.shade900,
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                          Icons.account_circle_rounded,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "${Name[index]}",
                        style: TextStyle(fontSize: 17,color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        "${Ti[index]}",
                        style: TextStyle(fontSize: 17,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
