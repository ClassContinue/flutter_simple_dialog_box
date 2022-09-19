import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Dialog Box"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _simpleDialog(context);
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}

_simpleDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: Colors.yellow.shade100,
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          title: const Text("Do you like music ?"),
          children: [
            SimpleDialogOption(
              child: const Text("Yes"),
              onPressed: () {
                print("yes");
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: const Text("No"),
              onPressed: () {
                print("no");
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
