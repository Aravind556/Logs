import 'package:app/componenets/user.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
          ListView.builder(
            itemCount: 4,
              itemBuilder: (context,index){
            return UserCard(amount: '20');
          })


    );
  }
}
