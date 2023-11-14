import 'package:flutter/material.dart';
import 'package:hello_app/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'loginpage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginimg.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $username",
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
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText:
                        true, // Set this to true to display dots for the password
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                    ),
                  )

                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, HomePage.id);
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
