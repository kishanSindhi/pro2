import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro2/screens/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
  final idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Name"),
                const SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: nameController,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text("Stud Id"),
                const SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    controller: idController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                child: const Text("Submit"),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => Details(
                        name: nameController.text,
                        id: idController.text,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
