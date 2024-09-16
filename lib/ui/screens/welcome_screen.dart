import 'package:flutter/material.dart';
import 'package:ice_cream_mobile/ui/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8A19D6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            Image.asset("assets/images/logo.png"),
            const Spacer(
              flex: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (e) => const LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 150, vertical: 15), // Adjust padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ), // Color of the text and icon
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min, // Adjust size based on content
                children: [
                  Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff8A19D6),
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and icon
                  Icon(
                    Icons.arrow_right_alt_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
