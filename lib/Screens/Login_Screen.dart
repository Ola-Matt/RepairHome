import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/rphm.png'),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        color: Colors.black87
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue[900],
                        ),
                        labelText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    // keyboardType: TextInputType.username,
                    style: TextStyle(
                        color: Colors.black87
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.blue[900],
                        ),
                        labelText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        )
                    ),

                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(
                        color: Colors.black87
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.blue[900],
                        ),
                        labelText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        )
                    ),

                  ),
                ),
                const SizedBox(
                  height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black87),
                        ),
                        style: ButtonStyle(
                          // textStyle:
                          //     MaterialStateProperty.all(TextStyle(color: Colors.pink)),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'images/facebook-logo-png-6381.png',
                      height : 24,
                      width: 24,
                    ),
                    Image.asset(
                      'images/twitter.png',
                      height : 24,
                      width: 24,
                    ),
                    Image.asset(
                      'images/google.png',
                      height : 24,
                      width: 24,
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
