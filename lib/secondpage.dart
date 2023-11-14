import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1app/data.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<DataProvider>(
              builder: (context, value, child) {
                return Text(value.count.toString());
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("First Screen"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var provider = Provider.of<DataProvider>(context, listen: false);
          provider.changecountfun();
        },
        child: Text("+"),
      ),
    );
  }
}
