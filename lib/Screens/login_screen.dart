import 'package:flutter/material.dart';
import 'package:home/Screens/create_account.dart';
import 'package:home/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  //Custom Widget for Social Logins
  Widget _socialLogin(String name) {
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

  //Custom Widget for TextFields
  Widget _inputField(IconData indicator, String hint, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(18),
        prefixIcon: Icon(
          indicator,
          color: Colors.blue[900],
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.black38,
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
              children: [
                //Header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/rphm.png'),
                    const Text(
                      'Login to your account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                //Content Body
                const SizedBox(height: 10),
                Column(
                  children: [
                    Card(
                      elevation: 6,
                      child: _inputField(Icons.email, 'Email', false),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 6,
                      child: _inputField(Icons.password, 'Password', true),
                    ),
                    const SizedBox(height: 20),

                    //Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            const Size(double.infinity, 55)),
                        shadowColor:
                            MaterialStateProperty.all(Colors.blue[900]),
                        elevation: MaterialStateProperty.all(10),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue[900],
                        ),
                      ),
                    ),
                  ],
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
                        _socialLogin('images/google.png'),
                        _socialLogin('images/facebook-logo-png-6381.png'),
                        _socialLogin('images/twitter.png'),
                      ],
                    ),
                  ],
                ),

                //Link to Create account page
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateAccount(),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
