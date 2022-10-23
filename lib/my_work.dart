import 'package:flutter/material.dart';
import 'package:login_train/button_widgit.dart';
import 'package:login_train/counter_screen.dart';
import 'package:login_train/homeScreen.dart';
import 'package:login_train/loginScreen.dart';
import 'package:login_train/testing.dart';
import 'package:login_train/user_screen.dart';

class MyWork extends StatelessWidget {
  const MyWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyWork"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                  child: const Text("Messenger Screen",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const MessengerScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                  child: const Text("User Screen",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                  child: const Text("Counter Screen",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CounterScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                  child: const Text("Login Screen",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
