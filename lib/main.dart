
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
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
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
            Row(
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
                Container(
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
              
              
              ],
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
              Container(
                width: 350.0,
                child: Image.network("https://cdn.grabon.in/gograbon/images/merchant/1545547346420.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 350.0,
                child: Image.network("https://cdn.grabon.in/gograbon/images/web-images/uploads/1549361194978/zomato-coupons.jpg"),
              ),
              SizedBox(width: 20,),
              Container(
                width: 260.0,
                child: Image.network("https://cashkaro.com/blog/wp-content/uploads/sites/5/2019/02/Zomato-Paytm-Flat-50-Off-Offer.jpg"),
              ),
              SizedBox(
              width: 20,
              ),
              Container(
                width: 260.0,
                child: Image.network("https://cashkaro.com/blog/wp-content/uploads/sites/5/2019/02/Zomato-Rupay-Card-Offers.jpg"),
              ),
              SizedBox(
                width : 20
                
              ),
              Container(
                
                width: 350.0,
                child: Image.network("https://i.ytimg.com/vi/_ojlZXeZns8/maxresdefault.jpg"),
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
              Container(
                width: 100.0,
                child: Image.asset("assets/grt2.jpg")
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 100.0,
                child: Image.asset("assets/grt.jpg"),
              ),
              SizedBox(width: 5,),
              Container(
                width: 100.0,
                child: Image.asset("assets/grt1.jpg"),
              ),
           
         ]

         )
            )
        ]
        
           )   , 
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
            Row(
             children: <Widget>[
                Image.network('https://upload.wikimedia.org/wikipedia/commons/5/5d/Chicken_65_%28Dish%29.jpg',
                height: 80,
                width: 120,)
                ,Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(' Master Dhaba',
                  
                    
                    style: TextStyle(fontWeight: FontWeight.bold ,
                    fontSize: 20
                    ),
                    ),
                    Text(' Rs 100 per person\n Currently not accepting orders'),
                    

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
              SizedBox(
              height: 5,
            ),
            Row(
             children: <Widget>[
                Image.network('https://thelodhi.com/admin/exec/slider/lodhi-bakery-slider2.jpg1556543291.jpg',
                height: 80,
                width: 120,)
                ,Center(
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
              SizedBox(
              height: 5,
            ),
            Row(
             children: <Widget>[
                Image.network('https://www.shikararestaurant.com/wp-content/uploads/2018/01/chicken-65.jpg',
                height: 80,
                width:120,)
                ,Center(
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
              SizedBox(
              height: 5,
            ),
            Row(
             children: <Widget>[
                Image.network('https://www.indianfestivaldiary.com/durgapuja/sweets_recipes/images/durga_puja_sweets_recipes.jpg',
                height: 80,
                width: 120,)
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
              SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
               children: <Widget>[
                  Image.network('https://www.foodfitnessbeautyandmore.com/wp-content/uploads/2017/10/litti-chokha-baked-appe-39-1024x768.jpg',
                  height: 80,
                  width: 120,)
                  ,Column(
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
               SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
               children: <Widget>[
                  Image.network('https://www.seriouseats.com/images/2017/10/20171009-egg-breakfast-recipes-roundup-02.jpg',
                  height: 80,
                  width: 120,)
                  ,Column(
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
               SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
               children: <Widget>[
                  Image.network('https://www.thespicedlife.com/wp-content/uploads/2015/07/North-Indian-Baked-Eggs-1-1-of-1.jpg',
                  height: 80,
                  width: 120,)
                  ,Column(
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
               SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
               children: <Widget>[
                  Image.network('https://www.tasty-indian-recipes.com/wp-content/uploads/2013/11/Khada-Pav-Bhaji-Recipe.jpg',
                  height: 80,
                  width: 120,)
                  ,Column(
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
            )
            ,   SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
               children: <Widget>[
                  Image.network('https://www.yummyfoodrecipes.in/resources/picture/org/Marathi-dish.jpg',
                  height: 80,
                  width: 120,)
                  ,Column(
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
               SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
               children: <Widget>[
                  Image.network('https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/5/27/1/0155727_BURGERS-30_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371597459171.jpeg',
                  height: 80,
                  width: 120,)
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
            )
            ]
                )
                
                ]
                )  
                 );

     
  }
}
     