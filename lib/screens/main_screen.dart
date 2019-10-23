import 'package:flutter/material.dart';

//  Pages
import '../pages/home_page.dart';
import '../pages/todays_quote.dart';
import '../pages/contact_me_page.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  HomePage homePage;
  Todays_Quote todaysQuote;
  Contact contact;


  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //pages initialization
    homePage = HomePage();
    todaysQuote = Todays_Quote();
    contact = Contact();


    pages = [homePage, todaysQuote, contact];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 1.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            title: Text("QoD"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text("Contact me", style: TextStyle(fontFamily: 'verdana',  ),),
          ),
        ],
      ),

      body: currentPage,
    );
  }
}
