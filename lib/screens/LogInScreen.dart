import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Mobile Number"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).go("/log-in");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Log In"),
              ),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go("/register");
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
