import 'package:app/componenets/top_card.dart';
import 'package:app/pages/customerpage.dart';
import 'package:app/pages/homecontent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    HomeContent(),
    CustomerPage(),
    TopCard(balance: '20', expense: '30', income: '40'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: "hello",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Users"),
          ],
          backgroundColor: Colors.grey[400],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
