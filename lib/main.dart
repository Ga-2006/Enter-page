import 'package:flutter/material.dart';
import 'package:flutter_application_2/secreen/enter_widget.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome ',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(95, 95, 78, 1.0),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D6C5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '☆ω☆ أهلاً بك☆ω☆',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B7984),
                ),
              ),
              SizedBox(height: 15),
              Text(
                '!مرحبا بك في تطبيق MYDAY  ,ستتمكن من متابعة كافة أنشطتك ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color:  Colors.black87,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('انضم الآن'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}