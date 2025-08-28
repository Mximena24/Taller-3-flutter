import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_application_1/widgets/userCard.widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});


  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  final String url = "https://i.pravatar.cc/300";
  int _counter = 0;

  final List<UserModel> _users = [
    UserModel(name: "Carlos", age: 15, category: "Menor de edad"),
    UserModel(name: "Pedro", age: 22, category: "Mayor de edad"),
    UserModel(name: "Sofia", age: 25, category: "Mayor de edad"),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _createUser(UserModel user){
    setState(() {
      _users.add(user);
    });
  }

  ListView _getUsers(){
    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context ,index){
        final user = _users[index];
        return CardPrueba(user: user);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Perfil"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),  
            const SizedBox(height: 20),
                      Column(
            children: [
              Text("Nombre: ${_users.name}"),
              Text("Edad: ${_users.age}"),
              Text("Categoría: ${_users.category}"),
              const SizedBox(height: 20),
              Expanded(
                child: _getUsers()
              ),  
            ],
          ),     
       ],
      ),
    ),  
    floatingActionButton: FloatingActionButton(
      onPressed: () {_createUser(UserModel(name: "Nombre aleatorio", age: 15, category: "Menor de edad"));},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
      ),
    );
  }
}

