import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final int amount;
  final VoidCallback onDelete;
  const UserCard({required this.amount,required this.name,required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return   Card(
      color: Colors.grey[200],
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[400],
          child: const Icon(Icons.person, color: Colors.black),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        subtitle: Text(
          '\$ ${amount}',
          style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.redAccent),
          onPressed: onDelete,
            ),
        ),
      );
  }
}
