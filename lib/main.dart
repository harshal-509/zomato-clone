
import 'package:flutter/material.dart';
import 'package:fade/fade.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



void main() => runApp(MaterialApp(
      // home: HomePage(),
      home: Zomato(),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
    ));



class Zomato extends StatefulWidget {
  @override
  _ZomatoState createState() => _ZomatoState();
}

class _ZomatoState extends State<Zomato> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
     int _selectedIndex = 0;
 const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
 const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Delievery',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 2: History',
      style: optionStyle,
    ),
    Text(
      'Index 3: Videos',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

    return Scaffold(
       body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
     
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
             backgroundColor: Colors.grey,
            icon: Icon(Icons.directions_bike),
            title: Text('Delivery',
            style: TextStyle(color: Colors.black,
              
            ),  
            ),
          ),
          BottomNavigationBarItem(
             backgroundColor: Colors.grey,
            icon: Icon(Icons.favorite_border),
            title: Text('Favorite',
            style: TextStyle(color: Colors.black
            ),
            ),
          ),

         
          BottomNavigationBarItem(
             backgroundColor: Colors.grey,
            icon: Icon(Icons.history),
            title: Text('History'),
          ),
            BottomNavigationBarItem(
               backgroundColor: Colors.grey,
            icon: Icon(Icons.video_library),
            title: Text('Videos',
             style: TextStyle(color: Colors.black
            ),),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      
    
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
              title: Text('Food orders' ,style: TextStyle(fontWeight: FontWeight.bold,
                               ),
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
        
        backgroundColor: Colors.white70,
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
            
            decoration: BoxDecoration(
  
            ),
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
                      labelText: "Search for restaurant, cafe..."),
                      
                ),
              ),
            ),
          ),
        ),
      ),
    
      bottomSheet: ListView(
        children: <Widget>[
            Container(
                  
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 350.0,
                  child: Image.asset("assets/grt3.png")
                ),
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 350.0,
                  child: Image.asset("assets/grt4.jpg")
                ),
              ),
              SizedBox(width: 20,),
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 260.0,
                  child: Image.asset("assets/grt5.jpg")
                ),
              ),
              SizedBox(
              width: 20,
              ),
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 260.0,
                  child:Image.asset("assets/grt6.jpg")
                ),
              ),
              SizedBox(
                width : 20
                
              ),
              FlatButton (
                onPressed: (){},
                              child: Container(
                  
                  width: 350.0,
                  child: Image.asset("assets/grt7.jpg")
                ),
              ),
            ],
          ),
        
            
      
       ),
        Column(
         children: <Widget>[
            Container(
                  
 
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.asset("assets/grt2.jpg")
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.asset("assets/grt.jpg"),
                ),
              ),
              SizedBox(width: 5,),
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.asset("assets/grt1.jpg"),
                ),
              ),
           
         ]

         )
            )
        ]
        
           )   , 
           SizedBox(
             height: 5,
           ),
            Column(
         children: <Widget>[
            Container(
                  
 
          height: 20.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FlatButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text('Filters')

              ),
              SizedBox(
                width: 1,
              ),
              FlatButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text('Rating:4.0+')
              ),
              SizedBox(width: 1,),
              FlatButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text('Fastest Delivery')
                
              ),
               SizedBox(width: 1,),
              FlatButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text('Rating')
              ),
               SizedBox(width: 1,),
              FlatButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text('Cost')
              ),
               SizedBox(width: 1,),
              FlatButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text('Cuisines')
                
              ),
           
             ]
             
         )
           
            ),
            SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Row(
               children: <Widget>[
                  Image.asset("assets/grt8.jpg",
                  height: 100
                  ,width: 120,
                  ),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text(' Master Dhaba',
                    
                      
                      style: TextStyle(fontWeight: FontWeight.bold ,
                      fontSize: 20
                      ),
                      ),
                      Text(' Veg/NonVeg\n Rs 100 per person'),
                      

                    ],
                    
                    ),
                  ),
                  SizedBox(
width: 10,
                  ),
                 Expanded(
                                  child: Container(
                     alignment: Alignment.centerRight,
                     child: RatingBarIndicator(
    rating: 2.75,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                   ),
                 ),
               ], 
              ),
            ),
              SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Row(
               children: <Widget>[
                 Image.asset("assets/grt9.jpg",
                 height: 100
                  ,width: 120,),
                 Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(' Natural Fresh',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold ,
                      fontSize: 20
                      ),
                      ),
                      Text(' Bakery \n Rs 100 per person\n '),
                      

                    ],
                    
                    ),
                  ),
                  SizedBox(
width: 10,
                  ),
                Expanded(
                                child: Container(
                    alignment:Alignment.centerRight ,
                    child: RatingBarIndicator(
    rating: 3.6,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                  ),
                ),
               ], 
              ),
            ),
              SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Row(
               children: <Widget>[
                 Image.asset("assets/grt10.jpg"
                 ,height: 100
                  ,width: 120,),
                 Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Satguru Dhaba',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20 
                      ),
                      ),
                      Text('North Indian\nRs 100 per person\n '),
                      

                    ],
                    
                    ),
                  ),
                  SizedBox(
width: 10,
                  ),
                Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                    child: RatingBarIndicator(
    rating: 3.4,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                  ),
                ),
               ], 
              ),
            ),
              SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Row(
               children: <Widget>[
                 Image.asset("assets/grt11.jpg"
                 ,height: 100
                  ,width: 120,)
                 ,Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(' Banarsi misthan',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20 
                      ),
                      ),
                      Text(' Mithai,Beverages\n Rs 100 per person'),
                      

                    ],
                    
                    ),
                  ),
                  SizedBox(
width: 10,
                  ),
                Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                    child: RatingBarIndicator(
    rating: 4.0,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                  ),
                ),
               ], 
              ),
            ),
              SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Center(
                child: Row(
                 children: <Widget>[
                    Image.asset("assets/grt12.jpg",
                    height: 100
                  ,width: 120,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Aroma Restaurant ',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold 
                      ,fontSize: 20),
                      ),
                      Text('South Indian\nRs 150 per person\n '),
                      

                    ],
                    
                    ),
                    SizedBox(
width: 10,
                    ),
                   Expanded(
                                      child: Container(
                  alignment: Alignment.centerRight,
                       child: RatingBarIndicator(
    rating: 3.2,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                     ),
                   ),
                 ], 
                ),
              ),
            ),
               SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Center(
                child: Row(
                 children: <Widget>[
                    Image.asset("assets/grt13.jpg"
                    ,height: 100
                  ,width: 120,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Krishna Egg point',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold 
                      ,fontSize: 20),
                      ),
                      Text('Opens at 1:15 pm\nRs 100 per person\n '),
                      

                    ],
                    
                    ),
                    SizedBox(
width: 10,
                    ),
                   Expanded(
                                      child: Container(
                  alignment: Alignment.centerRight,
                       child: RatingBarIndicator(
    rating: 4.5,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                     ),
                   ),
                 ], 
                ),
              ),
            ),
               SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Center(
                child: Row(
                 children: <Widget>[
                    Image.asset("assets/grt14.jpg",
                    height: 100
                  ,width: 120,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('7th Heaven',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold 
                      ,fontSize: 20),
                      ),
                      Text('Fast Food,Desserts,Chinese \nRs 100 per person\n Opens at 12:10 pm  '),
                      

                    ],
                    
                    ),
                    SizedBox(
width: 10,
                    ),
                   Expanded(
                                      child: Container(
                  alignment: Alignment.centerRight,
                       child: RatingBarIndicator(
    rating: 4.0,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                     ),
                   ),
                 ], 
                ),
              ),
            ),
               SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Center(
                child: Row(
                 children: <Widget>[
                    Image.asset("assets/grt15.jpg",
                    height: 100
                  ,width: 120,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Om bhaji pav ',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold 
                      ,fontSize: 20),
                      ),
                      Text('North Indian\nRs 100 per person\n '),
                      

                    ],
                    
                    ),
                    SizedBox(
width: 10,
                    ),
                   Expanded(
                                      child: Container(
                  alignment: Alignment.centerRight,
                       child: RatingBarIndicator(
    rating: 2,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),

                     ),
                   ),
                 ], 
                ),
              ),
            )
            ,   SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Center(
                child: Row(
                 children: <Widget>[
                    Image.asset("assets/grt16.jpg",
                    height: 100
                  ,width: 120,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Goli Vada pav ',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold 
                      ,fontSize: 20),
                      ),
                      Text('Street Food \nRs 50 per person \nOpens at 10:00 am '),
                      

                    ],
                    
                    ),
                    SizedBox(
width: 10,
                    ),
                   Expanded(
                                      child: Container(
                  alignment: Alignment.centerRight,
                       child: RatingBarIndicator(
    rating: 4,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                     ),
                   ),
                 ], 
                ),
              ),
            ),
               SizedBox(
              height: 5,
            ),
            FlatButton (
              onPressed: (){},
                          child: Center(
                child: Row(
                 children: <Widget>[
                   Image.asset("assets/grt17.jpeg",
                   height: 100
                  ,width: 120,)
                   ,Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Mr Burger Cafe',
                       textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold 
                      ,fontSize: 20),
                      ),
                      Text('Fast Food,American,Italian\n Rs 100 per person\n Opens at 12:30 pm'),
                      

                    ],
                    
                    ),
                    SizedBox(
width: 10,
                    ),
                   Expanded(
                                      child: Container(
                  alignment: Alignment.centerRight,
                       child: RatingBarIndicator(
    rating: 3.2,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),
                     ),
                   ),
                 ], 
                ),
              ),
            )
            ]
                )
                
                ]
                )  
                 );     
  }
}
     