import 'package:flutter/material.dart';
import 'package:user_login/pages/home_page.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome User"),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                icon: const Icon(Icons.exit_to_app_outlined),
                label: const Text("Logout"))
          ],
        ),
      )),
    );
  }
}
