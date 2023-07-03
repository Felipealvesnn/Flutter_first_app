// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

import '../Models/users.dart';

class User_title extends StatelessWidget {
  final User user;
  const User_title(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar =  user.urlavatar.isEmpty
    ? const CircleAvatar(child: Icon(Icons.person_2_sharp)) :
     CircleAvatar(backgroundImage: NetworkImage(user.urlavatar));
   
    return 
    ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
       children: <Widget>[
         IconButton(onPressed: () {}, icon:const Icon(Icons.edit), color: Colors.grey),
         IconButton(onPressed: ()  {} , icon: const Icon(Icons.delete), 
         color: Colors.red,)
      ]
      
        ),
      ),
    );
  }
}
