import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("images/m1.jpg"),
                            ),
                          ),
                          
                          Positioned(child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white, width: 3)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text("+9", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),),
                            ),
                          ))
                        ],
                      ),

                      Text("Chats", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        child: Icon(Icons.camera_alt, color: Colors.black,),
                      ),

                      SizedBox(width: 10,),

                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        child: Icon(Icons.edit, color: Colors.black,),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
