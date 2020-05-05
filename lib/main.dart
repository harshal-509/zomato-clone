import 'package:flutter/material.dart';
import 'package:zomato/Historypage.dart';
import 'package:zomato/Deliverypage.dart';
import 'package:zomato/Favouritepage.dart';
import 'package:zomato/Videospage.dart';
import 'package:flutter/services.dart';
void main() => runApp( MaterialApp(
      home: Bar(),
    )
        );
 

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
                                    }

class _BarState extends State<Bar> {
  int _selectedIndex = 0;
final List<Widget> _widgetOptions = <Widget>[
  Zomato(),
  Favourite(),
  History(),
  Videos()
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    
  
SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    return MaterialApp(
      
    home :  
    Scaffold(
       body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
                    ),
     
      bottomNavigationBar: BottomNavigationBar(
      
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
             backgroundColor: Colors.grey,
            icon: Icon(Icons.directions_bike),
            title: Text('Delivery',
            style: TextStyle(color: Colors.black),  
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
            title: Text('History',
            style: TextStyle(
              color: Colors.black
            ),),
          ),
            BottomNavigationBarItem(
              
               backgroundColor: Colors.grey,
            icon: Icon(Icons.video_library),
            title: Text('Videos',
             style: TextStyle(color: Colors.black
            ),
            ),
          ),
        ],
         currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      ),
    )
    
    );
  }
}

