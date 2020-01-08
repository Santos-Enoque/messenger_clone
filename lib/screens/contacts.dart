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
                              radius: 25,
                              backgroundImage: AssetImage("images/m1.jpg"),
                            ),
                          ),
                          
                          Positioned(
                            right: 2,
                            child: Container(
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
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.camera_alt, color: Colors.black,),
                      ),

                      SizedBox(width: 10,),

                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.edit, color: Colors.black,),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25)
                ),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left:12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      icon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                    child: Icon(Icons.add, size: 24, color: Colors.black),),
                  ),

                       Padding(
                    padding: const EdgeInsets.all( 12),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage("images/m2.jpg"),
                ),
                  ),

                         Padding(
                    padding: const EdgeInsets.all( 12),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage("images/m1.jpg"),
                ),
                  ),

                         Padding(
                    padding: const EdgeInsets.all( 12),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage("images/w1.jpg"),
                ),
                  ),

                         Padding(
                    padding: const EdgeInsets.all( 12),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage("images/w2.jpg"),
                ),
                  ),

               
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
