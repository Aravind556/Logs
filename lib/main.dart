import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade200,
          title: const Text("Getting the hang of it slowly"),
          elevation: 20,
          shadowColor: Colors.black,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  print("sorry");
                },
                icon: Icon(Icons.account_box_outlined),
              ),
              label: 'Account',
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp),
                label: 'Ac',
            )
          ],
          elevation: 20,
        ),
        backgroundColor: Colors.amber,
        body: Center(
          child: Container(
            child: Center(
              child: Text(
                "HIIIIII ",
                style: GoogleFonts.tinos(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            padding: EdgeInsets.all(10),
            height: 100,
            width: 200,
          ),
        ),
      ),
    );
  }
}
