import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1app/data.dart';
import 'package:provider1app/secondpage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DataProvider(), child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<DataProvider>(
              builder: (context, value, child) {
                return Text(value.count.toString());
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: const Text("Second Screen"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var dataUpdate = Provider.of<DataProvider>(context, listen: false);
          dataUpdate.changecountfun();
        },
        child: Text("+"),
      ),
    );
  }
}
