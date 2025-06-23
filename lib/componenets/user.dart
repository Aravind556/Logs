import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String amount;
  const UserCard({required this.amount});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
              height:80,
              width:double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30)
              ),
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Icon(Icons.person),Text("hello"),Text(amount)],
                ),
              )
          ),
        ),
    );
  }
}
