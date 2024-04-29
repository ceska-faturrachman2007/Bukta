import 'package:buku_tamu/dashboard.dart';
import 'package:buku_tamu/dashboardlogin.dart';
import 'package:buku_tamu/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController requirementsController = TextEditingController();
  final TextEditingController originsController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 240, 240),
      appBar: AppBar(
        title: Text("Welcome to Guest Book"),
        backgroundColor: Color.fromARGB(255, 19, 31, 25), 
        leading: IconButton(
          icon: const Icon(Icons.person_2_outlined),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageLogIn(),
              ),
            );
          },
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 238, 129, 129)!)),
                labelText: 'Nama Tamu',
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No telepon',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: requirementsController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Keperluan',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: originsController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Asal daerah',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text("ENTER"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageBaru(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}