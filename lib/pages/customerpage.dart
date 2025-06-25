import 'package:app/componenets/Dialog.dart';
import 'package:app/componenets/user_tile.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final List<Map<String, dynamic>> customers = [];

  void _addCustomer(String name, int amount, String pickle, int batch) {
    setState(() {
      customers.add({'name': name, 'amount': amount, 'pickle': pickle, 'batch': batch});
    });
  }

  void _showAddCustomerDialog() {
    final nameController = TextEditingController();
    final amountController = TextEditingController();
    final pickleController = TextEditingController();
    final batchController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => Dialogbox(
        nameController: nameController,
        amountController: amountController,
        pickleController: pickleController,
        batchController: batchController,
        onAdd:_addCustomer,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Customers', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: customers.isEmpty
            ? const Center(
                child: Text(
                  'No customers yet!',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: customers.length,
                itemBuilder: (context, index) {
                  final customer = customers[index];
                  return UserCard(
                    amount: customer['amount'] is int
                        ? customer['amount']
                        : int.tryParse(customer['amount'].toString()) ?? 0,
                    name: customer['name'] ?? '',
                    onDelete: () {
                      setState(() {
                        customers.removeAt(index);
                      });
                    },
                    onEdit: () {
                      final nameController = TextEditingController(text: customer['name']);
                      final amountController = TextEditingController(text: customer['amount'].toString());
                      final pickleController = TextEditingController(text: customer['pickle']);
                      final batchController = TextEditingController(text: customer['batch'].toString());

                      showDialog(
                        context: context,
                        builder: (context) => Dialogbox(
                          nameController: nameController,
                          amountController: amountController,
                          pickleController: pickleController,
                          batchController: batchController,
                          onAdd: (name, amount, pickle, batch) {
                            setState(() {
                              customers[index] = {
                                'name': name,
                                'amount': amount,
                                'pickle': pickle,
                                'batch': batch,
                              };
                            });
                          },
                        ),
                      );
                    },
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[400],
          foregroundColor: Colors.black,
          onPressed: _showAddCustomerDialog,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}