import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade900,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.account_circle_rounded,size: 60,color: Colors.grey,),
                title: Text("My Status",style: TextStyle(color: Colors.white),),
                subtitle: Text("Tap to add Status Update",style: TextStyle(color: Colors.grey.shade500),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
