import 'package:app/componenets/Button.dart';
import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController amountController;
  final TextEditingController pickleController;
  final TextEditingController batchController;
  final void Function(String name, int amount, String pickle,int batch) onAdd;

  const Dialogbox({
    super.key,
    required this.nameController,
    required this.amountController,
    required this.pickleController,
    required this.batchController,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[400],
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
              hintText: "Enter amount",
              prefixIcon: Icon(Icons.attach_money, color: Colors.black54),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(decoration: const InputDecoration(
            labelText: 'Batch No',
            hintText: "Enter Batch no",
            prefixIcon: Icon(Icons.category_sharp,color: Colors.black54),
          ),
          controller: batchController,),
          TextField(decoration: const InputDecoration(
            labelText: 'Pickle Type',
            prefixIcon: Icon(Icons.ac_unit_sharp, color: Colors.black54),
          ),
          controller: pickleController,)
        ],
      ),
      actions: [
        //Cancel button
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel', style: TextStyle(color: Colors.black54)),
        ),

        //Add Button

        Button(
          text: "Add",
          onPressed: () {
            if (nameController.text.isNotEmpty &&
                amountController.text.isNotEmpty &&
                pickleController.text.isNotEmpty &&
                batchController.text.isNotEmpty) {
              final int? amount = int.tryParse(amountController.text);
              final int? batch = int.tryParse(batchController.text);
              if (amount != null && batch != null) {
                onAdd(
                  nameController.text,
                  amount,
                  pickleController.text,
                  batch,
                );
                Navigator.pop(context);
              }
            }
            else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please fill all fields'),
                  backgroundColor: Colors.redAccent,
                ),
              );
            }

          },
        )

      ],
    );
  }
}