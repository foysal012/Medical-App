import 'package:doctor_hunt/screen/diagonastic_test_page_screen.dart';
import 'package:doctor_hunt/screen/favourite_doctor_page_screen.dart';
import 'package:doctor_hunt/screen/home_page_screen.dart';
import 'package:doctor_hunt/screen/search_page_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  List<Widget> pages = [
    HomePageScreen(),
    FavouriteDoctorPageScreen(),
    DiagonasticTestPageScreen(),
    SearchPageScreen(),
  ];

  int currentindex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentindex],

      bottomNavigationBar: BottomNavigationBar(

        onTap: (value){
          setState(() {
            currentindex = value;
          });
        },

        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey,
        currentIndex: currentindex,
        selectedFontSize: 20,
        unselectedFontSize: 14,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.teal,
          fontWeight: FontWeight.w900,
        ),

        items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined),
            label: "Favourite Doctor",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Diagonastic Test",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.more_outlined),
            label: "Search...",
          ),

        ],

      ),
    );
  }
}
