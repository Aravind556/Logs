import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController amountController;
  final void Function(String name, int amount) onAdd;

  const Dialogbox({
    super.key,
    required this.nameController,
    required this.amountController,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: const Text('Add Customer', style: TextStyle(fontWeight: FontWeight.bold)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Customer Name',
              prefixIcon: Icon(Icons.person, color: Colors.black54),
            ),
          ),
          TextField(
            controller: amountController,
            decoration: const InputDecoration(
              labelText: 'Amount',
              prefixIcon: Icon(Icons.attach_money, color: Colors.black54),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel', style: TextStyle(color: Colors.black54)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[400],
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            if (nameController.text.isNotEmpty && amountController.text.isNotEmpty) {
              final int? amount = int.tryParse(amountController.text);
              if (amount != null) {
                onAdd(nameController.text, amount);
                Navigator.pop(context);
              }
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}