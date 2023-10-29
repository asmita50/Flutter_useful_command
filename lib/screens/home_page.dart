import 'package:command_app/screens/about_page.dart';
import 'package:command_app/screens/flutter_command/flutter_command_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  color: Colors.tealAccent,
                  child: const Center(
                    child: Text(
                      "Flutter Usefull Command",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Flutter Shortcurt Command"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
            icon: const Icon(Icons.info_outline),
            iconSize: 26.0,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: FlutterCommandModel.data.length,
        itemBuilder: (context, index) {
          var flutterCommand = FlutterCommandModel.data[index];
          return ListTile(
            isThreeLine: true,
            // contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.tealAccent,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(flutterCommand.key),
            ),
            subtitle: Text(flutterCommand.use),
          );
        },
      ),
    );
  }
}
