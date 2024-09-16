import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 52,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xff8A19D6),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/image1.png',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fulano",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("Administrador"),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: const Center(
              child: Icon(
                Icons.notifications_active_outlined,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
