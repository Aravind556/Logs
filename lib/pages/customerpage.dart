import 'package:app/componenets/user.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final List<Map<String, String>> customers = [];

  void _addCustomer(String name, String amount) {
    setState(() {
      customers.add({'name': name, 'amount': amount});
    });
  }

  void _showAddCustomerDialog() {
    final nameController = TextEditingController();
    final amountController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
                _addCustomer(nameController.text, amountController.text);
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
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
                  return Card(
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
                        customer['name'] ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      subtitle: Text(
                        'Amount: ₹${customer['amount'] ?? ''}',
                        style: const TextStyle(color: Colors.black87),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.redAccent),
                        onPressed: () {
                          setState(() {
                            customers.removeAt(index);
                          });
                        },
                      ),
                    ),
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