import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            width: 300,
            child: Image.asset('assets/images/chat.png'),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Email Address'),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      autocorrect: false,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                      obscureText: true,
                    ),
                  ]),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
