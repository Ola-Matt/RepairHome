import 'package:flutter/material.dart';
import 'package:home/Screens/cart_screen.dart';
import 'package:home/Screens/create_account.dart';
import 'package:home/screens/splash_screen.dart';

import 'Screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Custom widget for BottomBar
  Widget _textButton(String item) {
    return TextButton(
      onPressed: () {},
      child: Text(
        item,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.black),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              //Drawer Header
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  'images/rphm.png',
                ),
              ),
              //Go to Login Screen
              ListTile(
                leading: const Icon(Icons.login),
                title: const Text(
                  'Login',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              //Go to Create Account Screen
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text(
                  'Create Account',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Introduction
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What's broken?",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Search Appliances',
                        contentPadding: const EdgeInsets.all(20),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    const Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                //Cards
                const SizedBox(height: 35),
                Card(
                  color: Colors.purpleAccent,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.blue[100],
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Valid until June 30th',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 120,
                        width: double.infinity,
                        color: Colors.pink[100],
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(15, 15, 5, 15),
                              child: Text(
                                'Get 5% cashback\n'
                                'for every repair',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Image.asset(
                              'images/card1.jpg',
                              height: double.infinity,
                              width: 220,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Tab Header
                const SizedBox(height: 30),
                const Text(
                  'We can fix it',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    _textButton('Offers'),
                    _textButton('Kitchen'),
                    _textButton('Living Room'),
                    _textButton('Bathroom')
                  ],
                ),

                Column(
                  children: [
                    ListTile(
                      tileColor: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      leading: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(Icons.microwave,
                            size: 35, color: Colors.white),
                      ),
                      title: const Text('Fix Microwave'),
                      subtitle: const Text('Kitchen'),
                      trailing: const Icon(
                        Icons.navigate_next,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListTile(
                      tileColor: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      leading: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child:
                            const Icon(Icons.tv, size: 35, color: Colors.white),
                      ),
                      title: const Text('Fix TV set'),
                      subtitle: const Text('Living Room'),
                      trailing: const Icon(
                        Icons.navigate_next,
                        size: 50,
                        color: Colors.black,
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
