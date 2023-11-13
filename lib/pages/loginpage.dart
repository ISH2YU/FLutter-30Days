import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/loginimg.png",
            fit: BoxFit.cover,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text("login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
