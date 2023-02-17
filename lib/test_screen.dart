import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$index',style: Theme.of(context).textTheme.displayLarge),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: index,
        items: [
          BottomBarItem(
            icon: Icon(Icons.add),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.add),
            activeColor: Colors.orange,
          ),
          BottomBarItem(
            icon: Icon(Icons.add),
            activeColor: Colors.blue,
          ),
        ],
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
    );
  }
}
