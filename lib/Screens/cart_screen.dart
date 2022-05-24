import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.navigate_before),
            color: Colors.black,
            iconSize: 35,
          ),
          centerTitle: true,
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    width: 1,
                  ),
                ),
                tileColor: Colors.blue[50],
                leading: const Icon(Icons.microwave),
                title: const Text('Fix Microwave'),
                subtitle: const Text('Kitchen'),
                trailing: const Icon(Icons.navigate_next),
              ),
            );
          },
        ),
      ),
    );
  }
}
