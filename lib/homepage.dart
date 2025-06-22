import 'package:app/top_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_box_outlined),
              ),
              label: "accounts",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_box_outlined),
              ),
              label: "hello",
            ),
          ],
          backgroundColor: Colors.grey[400],
        ),
      ),
      body: Column(
        children: [
          TopCard(
            balance: '\$200',
            income: '\$500',
            expense: '\$300',
          ),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                alignment: Alignment.center,
                child: const Text("Hello"),
                decoration: BoxDecoration(color: Colors.grey[350]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
