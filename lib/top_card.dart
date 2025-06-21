import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 58.0,horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius,
        child: Container(
              height:200,
              width:500,
              color:Colors.white
        ),
      ),
    );
  }
}
