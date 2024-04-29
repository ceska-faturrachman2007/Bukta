import 'package:buku_tamu/login.dart';
import 'package:flutter/material.dart';

class DashLogin extends StatelessWidget {
  const DashLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "SUCSESFULLY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Selamat datang admin",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Add padding to the button
                ),
                child: Text("Kembali"),
              ),
            ),
            SizedBox(height: 16), // Add space between buttons
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Perform logout action here
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PageLogIn()), // Navigate to login page and replace the current screen
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Add padding to the button
                  backgroundColor: Colors.red, // Change button color
                ),
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white), // Change text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

