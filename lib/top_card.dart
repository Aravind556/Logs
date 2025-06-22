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
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          height: 220,
          width: 500,
          color: Colors.grey[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("B A L A N C E", style: TextStyle(fontSize: 15)),
              Text(balance, style: TextStyle(fontSize: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Icon(
                            Icons.arrow_drop_up_sharp,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                      ),

                      Text("Hello", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),

                        Column(
                          children: [
                            Text(
                                "Hello",
                                style: TextStyle(fontSize: 20),
                              ),
                            Text(expense, style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
