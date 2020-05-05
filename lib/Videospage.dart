import 'package:flutter/material.dart';
import 'package:fade/fade.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MaterialApp(
home: Videos(),
)
);
 class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
     bool visible = true;
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  final GlobalKey<ScaffoldState>_scaffoldkey= new GlobalKey<ScaffoldState>();
 @override
  void initState() {
    _controller = VideoPlayerController.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/intro.mp4?raw=true");
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
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
      
            
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            height: 70,
            
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Fade(
                    visible: visible, 
                // duration is optional
                duration: Duration(milliseconds: 400),
                child :TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: "Search for restaurant, cafe...")
                ),
              ),
            ),
          ),
        ),
      ),
      
      bottomSheet: ListView(
        children: <Widget>[

          Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                    
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
        },
      ),
      
        FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          }
          );
        },
        
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
            ],
          ),
          
          Text('                   RECENTLY ADDED',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),),
            Container(          
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 150.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt80.jpg?raw=true")
                ),
              ),
            
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 150.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt81.jpg?raw=true")
                ),
              ),
          
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 150.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt83.jpg?raw=true",)
                ),
              ),
                  FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 150.0,
                  child:Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt82.png?raw=true")
                ),
              ),
            ],
          ),
        ),
        Column(
         children: <Widget>[
           Text('MOST POPULAR',
           textAlign: TextAlign.end,
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
      
          ),),
            Container(
              margin:EdgeInsets.symmetric(vertical: 20.0) ,
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt84.jpg?raw=true")
                ),
              ),
            
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt85.jpg?raw=true",)
                ),
              ),
             ]
            )
          )
         ]
       ),    
           Column(
         children: <Widget>[
           Text('TRAVEL ORIGINALS',
           textAlign: TextAlign.end,
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
      
          ),),
            Container(
              margin:EdgeInsets.symmetric(vertical: 20.0) ,
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt86.jpg?raw=true")
                  ),
              ),
            
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt87.jpg?raw=true",)
                ),
              ),
          
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt88.jpg?raw=true",)
                ),
              ),
                  FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child:Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt89.jpg?raw=true",)
                ),
              ),
                
              
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt90.jpg?raw=true",)
                ),
              ),
             ]
            )
          )
         ]
       ),    
            Column(
         children: <Widget>[
           Text('2 MINUTE RECIPES',
           textAlign: TextAlign.end,
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
      
          ),),
            Container(
              margin:EdgeInsets.symmetric(vertical: 20.0) ,
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt91.jpg?raw=true")
                ),
              ),
            
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt92.jpg?raw=true",)
                ),
              ),
          
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt93.jpg?raw=true",)
                ),
              ),
                  FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child:Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt94.jpg?raw=true",)
                ),
              ),
                
              
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt95.jpg?raw=true")
                ),
              ),
               FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt96.jpg?raw=true",)
                ),
              ),
               FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.network("https://github.com/harshal-509/zomato-clone/blob/master/assets/grt97.jpg?raw=true",)
                ),
              ),
             ]
            )
          ),
         Text('ZOMATO',
         style: TextStyle(
           fontWeight: FontWeight.bold
         ),)]
       ),    
           
        ])
       
            );
  }
}