import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'E-Commerce Login',
      //     style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
      //   ),
      //   backgroundColor: Colors.teal,
      //   elevation: 0,
      // ),
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Colors.teal.shade200, Colors.teal.shade600],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   ),
        // ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png', // Add your logo asset here
                  height: 100,
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Welcome to ShopNow!',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 43, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Image.asset(
                //   'assets/logo.png', // Add your logo asset here
                //   height: 100,
                // ),
                // SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                      left: 100, right: 100, top: 20, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 150, right: 150),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/second');
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.teal.shade700,
                      textStyle: TextStyle(fontFamily: 'Roboto'),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
