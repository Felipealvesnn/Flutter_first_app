import 'package:flutter/material.dart';

import '../Models/users.dart';

class User_title extends StatelessWidget {
  final User user;
  const User_title(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar =  user.urlavatar.isEmpty
    ? CircleAvatar(child: Icon(Icons.person)) :
     CircleAvatar(backgroundImage: NetworkImage(user.urlavatar));
   
    return 
    ListTile(
      leading: avatar,
    );
  }
}
