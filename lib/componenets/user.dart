// import 'package:flutter/material.dart';
//
// class UserCard extends StatelessWidget {
//   final String amount;
//   const UserCard({required this.amount});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Center(
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Container(
//               height:80,
//               width:double.infinity,
//               decoration: BoxDecoration(
//                   color: Colors.black12,
//                   borderRadius: BorderRadius.circular(30)
//               ),
//               child:Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [Icon(Icons.person),Text("hello"),Text(amount)],
//                 ),
//               )
//           ),
//         ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String amount;
  final String name;
  final VoidCallback onDelete;

  const UserCard({
    required this.amount,
    required this.name,
    required this.onDelete,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Dismissible(
        key: ValueKey(name + amount),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) => onDelete(),
        background: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.delete, color: Colors.white, size: 32),
        ),
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.person, color: Colors.black),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(amount, style: const TextStyle(color: Colors.black87)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
