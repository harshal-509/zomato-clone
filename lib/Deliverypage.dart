import 'package:flutter/material.dart';
import 'package:fade/fade.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MaterialApp(
home: Zomato(),
)
);
class Zomato extends StatefulWidget {
  @override
  _ZomatoState createState() => _ZomatoState();
                                    }

class _ZomatoState extends State<Zomato> {
  bool visible = true;
  final GlobalKey<ScaffoldState>_scaffoldkey= new GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    
  

    return Scaffold(
       body: Center(
       ),
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
            
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 350.0,
                  child: Image.asset("assets/grt4.jpg")
                ),
              ),
          
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 260.0,
                  child: Image.asset("assets/grt5.jpg")
                ),
              ),
                  FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 260.0,
                  child:Image.asset("assets/grt6.jpg")
                ),
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
              
              FlatButton (
                onPressed: (){},
                              child: Container(
                  width: 100.0,
                  child: Image.asset("assets/grt.jpg"),
                ),
              ),
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
       ),    
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
              onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Zomato1()),
            );
              },
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
              onPressed: (){
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Zomato2()),
            );
              },
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
                    ]
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
              onPressed: (){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Zomato3()),
            );
              },
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
              onPressed: (){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Zomato4()),
            );
              },
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
              onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Zomato5()),
            );
              },
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
            
          ]
         )                
        ]
       )  
     );     
  }
}
    class Zomato1 extends StatefulWidget {
  @override
  _Zomato1State createState() => _Zomato1State();
}

class _Zomato1State extends State<Zomato1> {
      bool visible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              
                   Row(
                  children: <Widget>[
                    Image.asset("assets/grt8.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                    children: <Widget>[
                      Text('Master Dhaba',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                        ),
                        ),
                        Text('North Indian',
              
                         style: TextStyle(
                          color: Colors.red,
                          fontSize: 15)
                          )

                    ],
                    ),
                        
                    Spacer(),
                    
                RatingBarIndicator(
                  rating: 2.75,
    itemBuilder: (context, index) => Icon(
           Icons.star,
           color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),

                      ]
                          ),
       SizedBox(
           height :30
       ),
       Row(
          children: <Widget>[
       Icon(
           Icons.check_circle 
       ),
       Text('Delivering to Home(Kiet group of \nInstitutions),Muradnagar\nDelivery in 22 mins with live tracking',
       style: TextStyle(
       fontSize: 15  
       ),
       ),  SizedBox(
           width:5
       ),
      FlatButton(onPressed:(){} 
      , child:  Text('CHANGE')
      ) ,
          ]
       ),
       SizedBox(
           height : 20
       ),
          Row(
            children: <Widget>[
              FlatButton(onPressed:(){} ,
       child: Text('View restaurants delievering to Kiet Ghaziabad ')
       ),
       Icon(
           Icons.arrow_forward
       )
       
            ],
          ),
       SizedBox(
           height : 10
       ),  
     Row(
    children: <Widget>[
  Icon(
           Icons.fastfood,
           size: 20,
       ),
       Text('    Pure Veg.',
       style: TextStyle(
      color: Colors.orange,
      fontSize: 15
    
       
       ),
       ),
       SizedBox(
           width :140
       ),
      FlatButton (
          
          onPressed: (){},
                  child: Icon(
             Icons.search,
             
             size: 30, 
            ),
           )
          ],
       ),
        Divider(
                  thickness: 10,
                ),
          Text('Bestsellers',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Masala Dosa',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 7,
                               width: MediaQuery.of(context).size.width / 1.5,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('South Indian \nRs 108 per person\nMasala dosa is one that has potato masala or spiced and seasoned potatoes stuffed in it.')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chinese Platter',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 7,
                               width: MediaQuery.of(context).size.width / 1.5,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Combos\nRs 180 per person\n[Veg Noodles + Fried Rice + Manchuriyan + Spring Roll]\nSmall portion')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chilli Paneer Dry',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 7,
                               width: MediaQuery.of(context).size.width / 1.5,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Chinese\nRs 167 per person\nChilli paneer is a popular Indo Chinese starter made by seasoning fried Indian cottage cheese aka paneer in chilli sauce. ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Garlic Fried Rice',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 7,
                               width: MediaQuery.of(context).size.width / 1.5,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Fried rice and noodles\nRs 115 per person\nThis vegetable fried rice is an easy one to follow, can be made with any sauce one likes. It can be made in a jiffy with basic ingredients and rice.')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Cheese Burger',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 7,
                               width: MediaQuery.of(context).size.width / 1.5,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Burger and Sandwiches\nRs 75 per person\nA cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include variations in structure, ingredients and composition.')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                SizedBox(
                  height: 20,
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Chinese',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt18.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Manchurian',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 180 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt19.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chilli Paneer',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 216 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt20.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chilli potato',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 144 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[          Image.asset("assets/grt21.jpg",
                  height: 100
                  ,width: 120,
                  ),
                   
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                                   
                        Text('Spring Roll',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 144 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 SizedBox(
                  height: 20,
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Breads',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt22.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Tandoori Roti',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 24 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt23.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Butter Roti',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 30 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt24.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Missi Roti',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 36 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[          Image.asset("assets/grt25.jpg",
                  height: 100
                  ,width: 120,
                  ),
                   
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                                   
                        Text('Butter Naan',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 60 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                Divider(
                  thickness: 10,
                ),
                  Text('Soups',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt26.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Hot and Sour',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 84 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt27.cms",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Sweet corn Soup',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 84 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt28.png",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Tomato Soup',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 72 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Burgers and Sandwiches',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt29.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Veg Burger ',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 48 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt30.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Cheese Burger',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 66 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt31.cms",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Grilled Sandwich',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 96 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
              
              
                
          Container(
            alignment: Alignment.bottomRight,
                    child: PopupMenuButton<int>(
             icon: Icon(Icons.list),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Bestsellers     5'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Chinese     4'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Breads     4'),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Soups     3"),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text("Burgers and\n Sandwiches     3"),
                  ),
                ],
        ),
         ) ]
      ),
        )
    );
  }
}
class Zomato2 extends StatefulWidget {
  @override
  _Zomato2State createState() => _Zomato2State();
}

class _Zomato2State extends State<Zomato2> {
      bool visible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
                   Row(
                  children: <Widget>[
                    Image.asset("assets/grt9.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                    children: <Widget>[
                      Text('Natural Fresh',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                        ),
                        ),
                        Text('Bakery',
              
                         style: TextStyle(
                          color: Colors.red,
                          fontSize: 15)
                          )

                    ],
                    ),
                        
                    Spacer(),
                    
                RatingBarIndicator(
                  rating: 2.75,
    itemBuilder: (context, index) => Icon(
           Icons.star,
           color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),

                      ]
                          ),
       SizedBox(
           height :30
       ),
       Row(
          children: <Widget>[
       Icon(
           Icons.check_circle 
       ),
       Text('Delivering to Home(Kiet group of \nInstitutions),Muradnagar\nDelivery in 22 mins with live tracking',
       style: TextStyle(
       fontSize: 15  
       ),
       ),  SizedBox(
           width:5
       ),
      FlatButton(onPressed:(){} 
      , child:  Text('CHANGE')
      ) ,
          ]
       ),
       SizedBox(
           height : 20
       ),
          Row(
            children: <Widget>[
              FlatButton(onPressed:(){} ,
       child: Text('View restaurants delievering to Kiet Ghaziabad ')
       ),
       Icon(
           Icons.arrow_forward
       )
       
            ],
          ),
       SizedBox(
           height : 10
       ),  
     Row(
    children: <Widget>[
  Icon(
           Icons.fastfood,
           size: 20,
       ),
       Text('    Veg Only',
       style: TextStyle(
      color: Colors.orange,
      fontSize: 15
    
       
       ),
       ),
       SizedBox(
           width :140
       ),
      FlatButton (
          
          onPressed: (){},
                  child: Icon(
             Icons.search,
             
             size: 30, 
            ),
           )
          ],
       ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Bestsellers',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt32.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Pineapple Cake',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 250(500 grams) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt33.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Vanilla Cake',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 225(500 grams) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt34.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Strawberry Cake',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 300(500 grams) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[          Image.asset("assets/grt35.jpg",
                  height: 100
                  ,width: 120,
                  ),
                   
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                                   
                        Text('Choco Truffle',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 400(500 grams) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 SizedBox(
                  height: 20,
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Festive Season',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt36.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Pastry',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 149(Pack of 4) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt37.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Black Forest',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 189(Pack of 4) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 
                Divider(
                  thickness: 10,
                ),
                  Text('Desserts',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt38.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Fruit Cake',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 900(1 kg) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt39.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Vanilla Icecream',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 50 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt40.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Choco chips',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 800(1 Kg) ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            
          Container(
            alignment: Alignment.bottomRight,
                    child: PopupMenuButton<int>(
             icon: Icon(Icons.list),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Bestsellers     4'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Festive Season     2'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Desserts     3'),
                  ),
                  
                ],
        ),
         ) ]
      ),
        )
    );
  }
}
class Zomato4 extends StatefulWidget {
  @override
  _Zomato4State createState() => _Zomato4State();
}

class _Zomato4State extends State<Zomato4> {
      bool visible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
                   Row(
                  children: <Widget>[
                    Image.asset("assets/grt11.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                    children: <Widget>[
                      Text('Banarasi Misthan',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),
                        ),
                        Text('Mithai,Fast Food',
              
                         style: TextStyle(
                          color: Colors.red,
                          fontSize: 15)
                          )

                    ],
                    ),
                        
                    Spacer(),
                    
                RatingBarIndicator(
                  rating: 2.75,
    itemBuilder: (context, index) => Icon(
           Icons.star,
           color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),

                      ]
                          ),
       SizedBox(
           height :30
       ),
       Row(
          children: <Widget>[
       Icon(
           Icons.check_circle 
       ),
       Text('Delivering to Home(Kiet group of \nInstitutions),Muradnagar\nDelivery in 45 mins with live tracking',
       style: TextStyle(
       fontSize: 15  
       ),
       ),  SizedBox(
           width:5
       ),
      FlatButton(onPressed:(){} 
      , child:  Text('CHANGE')
      ) ,
          ]
       ),
       SizedBox(
           height : 20
       ),
          Row(
            children: <Widget>[
              FlatButton(onPressed:(){} ,
       child: Text('View restaurants delievering to Kiet Ghaziabad ')
       ),
       Icon(
           Icons.arrow_forward
       )
       
            ],
          ),
       SizedBox(
           height : 10
       ),  
     Row(
    children: <Widget>[
  Icon(
           Icons.fastfood,
           size: 20,
       ),
       Text('    Veg only.',
       style: TextStyle(
      color: Colors.orange,
      fontSize: 15
    
       
       ),
       ),
       SizedBox(
           width :140
       ),
      FlatButton (
          
          onPressed: (){},
                  child: Icon(
             Icons.search,
             
             size: 30, 
            ),
           )
          ],
       ),
        SizedBox(
                  height: 20,
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Bestsellers',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt60.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Soan Papdi',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 35 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
           Divider(
                  thickness: 10,
                ),
                 Text('Recommendations',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt59.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Aloo Kachori',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 12 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt52.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Bhedai',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 8 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt58.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chole Bhature',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 35 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[          Image.asset("assets/grt57.jpg",
                  height: 100
                  ,width: 120,
                  ),
                   
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                                   
                        Text('Gulab Jamun',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 18 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                Divider(
                  thickness: 10,
                ),
                  Text('Sweets',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt56.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Cham Cham',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 40 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt55.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Kheer mohan',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 40 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt54.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Boondi Ladoo',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 25 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Snacks',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt53.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Samosa ',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 10 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt52.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Bhedai',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 8 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt51.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Dal Kachori',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 12 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
              
              
                
          Container(
            alignment: Alignment.bottomRight,
                    child: PopupMenuButton<int>(
             icon: Icon(Icons.list),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Bestsellers     1'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Recommendations     4'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Sweets     3'),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Snacks     3"),
                  ),
                 
                ],
        ),
         ) ]
      ),
        )
    );
  }
}
class Zomato3 extends StatefulWidget {
  @override
  _Zomato3State createState() => _Zomato3State();
}

class _Zomato3State extends State<Zomato3> {
      bool visible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
                   Row(
                  children: <Widget>[
                    Image.asset("assets/grt10.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                    children: <Widget>[
                      Text('Satguru Dhaba',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                        ),
                        ),
                        Text('North Indian',
              
                         style: TextStyle(
                          color: Colors.red,
                          fontSize: 15)
                          )

                    ],
                    ),
                        
                    Spacer(),
                    
                RatingBarIndicator(
                  rating: 2.75,
    itemBuilder: (context, index) => Icon(
           Icons.star,
           color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),

                      ]
                          ),
       SizedBox(
           height :30
       ),
       Row(
          children: <Widget>[
       Icon(
           Icons.check_circle 
       ),
       Text('Delivering to Home(Kiet group of \nInstitutions),Muradnagar\nDelivery in 22 mins with live tracking',
       style: TextStyle(
       fontSize: 15  
       ),
       ),  SizedBox(
           width:5
       ),
      FlatButton(onPressed:(){} 
      , child:  Text('CHANGE')
      ) ,
          ]
       ),
       SizedBox(
           height : 20
       ),
          Row(
            children: <Widget>[
              FlatButton(onPressed:(){} ,
       child: Text('View restaurants delievering to Kiet Ghaziabad ')
       ),
       Icon(
           Icons.arrow_forward
       )
       
            ],
          ),
       SizedBox(
           height : 10
       ),  
     Row(
    children: <Widget>[
  Icon(
           Icons.fastfood,
           size: 20,
       ),
       Text('    Pure Veg.',
       style: TextStyle(
      color: Colors.orange,
      fontSize: 15
    
       
       ),
       ),
       SizedBox(
           width :140
       ),
      FlatButton (
          
          onPressed: (){},
                  child: Icon(
             Icons.search,
             
             size: 30, 
            ),
           )
          ],
       ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Starters',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt41.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Paneer Tikka',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 200 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt42.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chilli Paneer',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 220 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                
                 SizedBox(
                  height: 20,
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Rice',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt47.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Matar Pulao',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 140 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt46.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Paneer Pulao',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 140 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt45.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Jeera Rice',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 98 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[          Image.asset("assets/grt44.jpg",
                  height: 100
                  ,width: 120,
                  ),
                   
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                                   
                        Text('Plain Rice',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 90 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                Divider(
                  thickness: 10,
                ),
                  Text('Snack',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt43.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Mixture',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 98 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Accompaniments',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt50.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Dry Papad',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 35 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt49.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Masala Papad',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 80 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt48.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Boondi Raita',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 90 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
              
              
                
          Container(
            alignment: Alignment.bottomRight,
                    child: PopupMenuButton<int>(
             icon: Icon(Icons.list),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Starters     2'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Rice     4'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Snack     1'),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Accompaniments     3"),
                  ),
                  
                ],
        ),
         ) ]
      ),
        )
    );
  }
}
class Zomato5 extends StatefulWidget {
  @override
  _Zomato5State createState() => _Zomato5State();
}

class _Zomato5State extends State<Zomato5> {
      bool visible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
                   Row(
                  children: <Widget>[
                    Image.asset("assets/grt12.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                    children: <Widget>[
                      Text('Aroma Restaurant',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),
                        ),
                        Text('South Indian',
              
                         style: TextStyle(
                          color: Colors.red,
                          fontSize: 15)
                          )

                    ],
                    ),
                        
                    Spacer(),
                    
                RatingBarIndicator(
                  rating: 2.75,
    itemBuilder: (context, index) => Icon(
           Icons.star,
           color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.vertical,
),

                      ]
                          ),
       SizedBox(
           height :30
       ),
       Row(
          children: <Widget>[
       Icon(
           Icons.check_circle 
       ),
       Text('Delivering to Home(Kiet group of \nInstitutions),Muradnagar\nDelivery in 36 mins with live tracking',
       style: TextStyle(
       fontSize: 15  
       ),
       ),  SizedBox(
           width:5
       ),
      FlatButton(onPressed:(){} 
      , child:  Text('CHANGE')
      ) ,
          ]
       ),
       SizedBox(
           height : 20
       ),
          Row(
            children: <Widget>[
              FlatButton(onPressed:(){} ,
       child: Text('View restaurants delievering to Kiet Ghaziabad ')
       ),
       Icon(
           Icons.arrow_forward
       )
       
            ],
          ),
       SizedBox(
           height : 10
       ),  
     Row(
    children: <Widget>[
  Icon(
           Icons.fastfood,
           size: 20,
       ),
       Text('    Pure Veg.',
       style: TextStyle(
      color: Colors.orange,
      fontSize: 15
    
       
       ),
       ),
       SizedBox(
           width :140
       ),
      FlatButton (
          
          onPressed: (){},
                  child: Icon(
             Icons.search,
             
             size: 30, 
            ),
           )
          ],
       ),
        
                 Divider(
                  thickness: 10,
                ),
                 Text('Bestsellers',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt61.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Pav Bhaji',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 99 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt62.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Special Thali',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 250 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 
                 SizedBox(
                  height: 20,
                ),
                 Divider(
                  thickness: 10,
                ),
                 Text('Starters',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt63.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Chilli Paneer',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 230 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt64.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Manchurian',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 240 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                Divider(
                  thickness: 10,
                ),
                  Text('Main Course',
          style: TextStyle(
          fontSize:30
          ),
          ),
          
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt65.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Malai Kofta',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 220 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt66.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Shahi Paneer',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 220 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt67.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Butter Masala',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 220 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
           Row(
            
                 children: <Widget>[
                     Image.asset("assets/grt68.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Kadhai Paneer ',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 220 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
            Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt69.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Khoya Paneer',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                             height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                            child: SingleChildScrollView(child: Text('Rs 230 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
                 Row(
            
                 children: <Widget>[
                                        Image.asset("assets/grt70.jpg",
                  height: 100
                  ,width: 120,
                  ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[  
                        Text('Dum Aloo',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                        fontSize: 20
                        ),
                        ),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).copyWith().size.height / 15,
                               width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 
                               )
                             ),
                             child :SingleChildScrollView
                           
                           (child: Text('Rs 180 ')),                   
                          ),
                        )
                      ]
                      ),
                     FlatButton (
                       
                       onPressed: (){},
                                              child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               
                             )
                           ),
                          child: Text('Add+'),                   
                         ),
                      ),       
                 ], 
                ),
              
              
                
          Container(
            alignment: Alignment.bottomRight,
                    child: PopupMenuButton<int>(
             icon: Icon(Icons.list),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Bestsellers     2'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Starters     2'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Main Course     6'),
                  ),
                  
                ],
        ),
         ) ]
      ),
        )
    );
  }
}

