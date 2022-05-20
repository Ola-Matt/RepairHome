import 'package:flutter/material.dart';
import 'package:home/Screens/login_screen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  //This is a custom Widget
  Widget socialLogin(String name) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
      ),
      onPressed: null,
      child: Image.asset(
        name,
        height: 36,
        width: 36,
      ),
    );
  }

  Widget inputFields(bool passwordType, String hint, IconData prefix) {
    return Card(
      elevation: 6,
      child: TextField(
        obscureText: passwordType,
        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(18),
          prefixIcon: Icon(
            prefix,
            color: Colors.blue[900],
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black38,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                //Header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/rphm.png'),
                    const Text(
                      'Create new account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                //Content Body
                const SizedBox(height: 20),
                inputFields(false, 'Email', Icons.email),
                const SizedBox(height: 20),
                inputFields(true, 'Password', Icons.password),
                const SizedBox(height: 20),
                inputFields(true, 'Confirm Password', Icons.key),

                //Login Button
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 55)),
                    shadowColor: MaterialStateProperty.all(Colors.blue[900]),
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue[900],
                    ),
                  ),
                ),

                //Social Logins
                const SizedBox(height: 45),
                Column(
                  children: <Widget>[
                    const Text(
                      'Or sign in with -',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        socialLogin('images/google.png'),
                        socialLogin('images/facebook-logo-png-6381.png'),
                        socialLogin('images/twitter.png'),
                      ],
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
