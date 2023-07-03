import 'package:flutter/material.dart';
import 'package:flutter_crud/Data/Dummy_users.dart';

import '../Components/User_title.dart';

class Userlist extends StatelessWidget {
  const Userlist({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 108, 156),
        title: const Text('Lista de usuarios'),
        centerTitle: true, // Centraliza o texto
        actions: <Widget>[
          IconButton(
              onPressed: () {
               
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, index) =>
         User_title(users.values.elementAt(index)),
      ),
    );
  }
}

