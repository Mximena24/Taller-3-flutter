import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

class CardPrueba extends StatelessWidget {
  const CardPrueba({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column (
        children: [
          Text(user.name),
          Text(user.age.toString()),
          Text(user!.category!),
        ]
      ),
    );
  }
}
