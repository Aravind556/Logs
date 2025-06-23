import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expense;

  TopCard({required this.balance, required this.expense, required this.income});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 58.0, horizontal: 20),
        child: Container(
          height: 220,
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "B A L A N C E",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(balance, style: TextStyle(fontSize: 40)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.arrow_drop_up_sharp,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Column(
                            children: [
                              Text("Income", style: TextStyle(fontSize: 18,fontStyle: FontStyle.normal)),
                              Text(income,style:TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(33, 130, 9,1)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius:22,
                            backgroundColor: Colors.grey[200],
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Column(
                              children: [
                                Text("Expense", style: TextStyle(fontSize: 18,fontStyle: FontStyle.normal)),
                                Text(expense,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
                              ],
                            ),
                          ),
                        ],
                      ),

                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(0.15), // Subtle blue shadow
                blurRadius: 30,
                spreadRadius: 2,

                offset: Offset(-4, 4),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.08), // Soft black shadow for depth
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(12, 12),
              ),
            ],
          ),
        ),
      );
  }
}
