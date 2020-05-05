import 'package:flutter/material.dart';
class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
                                    }

class _HistoryState extends State<History> {
  bool visible = true;
 final GlobalKey<ScaffoldState>_scaffoldkey= new GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    
  

    return 
    Scaffold(
key: _scaffoldkey  ,
drawer: Drawer(
          
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        elevation: 80,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
           ListTile(
            
              title: Text('Login or Sign up',
              
              
              style: TextStyle(fontWeight: FontWeight.bold,
                               ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              
              
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Bookmarks', style: TextStyle(fontWeight: FontWeight.bold,
                               ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Food orders' ,style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
             ListTile(
               leading: Icon(Icons.fastfood),
              title: Text('Your orders'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             ListTile(
               leading: Icon(Icons.favorite),
              title: Text('Favourite orders'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             ListTile(
               leading: Icon(Icons.book),
              
              title: Text('Address book'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             ListTile(
               leading: Icon(Icons.help),
              title: Text('Online ordering help'),
              
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),     
             ListTile(
              title: Text('About', style: TextStyle(fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: Text('Send Feedback'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: Text('Rate us on Playstore'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle,
          color: Colors.red,
          size: 40,), onPressed: (){
              _scaffoldkey.currentState.openDrawer();
          }),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
           FlatButton (
             onPressed:(){} ,
                          child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text('KIET GHAZIABAD',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      )),
                  Spacer(),
                  FlatButton (
                    onPressed: (){},
                                      child: Container(
                      padding:
                          EdgeInsets.only(top: 2, left: 5, right: 5, bottom: 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.language,
                            size: 19,
                            color: Colors.black54,
                          ),
                          Text('EN',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                            )
                          ), 
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
       
      ),
     body:
    Column(
      children: <Widget>[
        Center(
          child: Icon(
            Icons.sentiment_dissatisfied,
            size:75,
            color: Colors.red,
          ),
          
         ),
         SizedBox(
           height: 20,
         ),
        Expanded(
                  child: Container(
            padding: EdgeInsets.all(20),

            child: Text('No History'
            ,textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
              
            ),),
          ),
        ) 
      ],
    )
    
    );
  }
  }