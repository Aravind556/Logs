import 'package:flutter/material.dart';

import '../componenets/top_card.dart';


class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:Column(
        children: [
          TopCard(balance: '\$200', income: '\$500', expense: '\$300'),
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
                decoration: BoxDecoration(color: Colors.grey[450]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
