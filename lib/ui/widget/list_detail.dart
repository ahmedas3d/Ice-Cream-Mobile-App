import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListDetails extends StatefulWidget {
  const ListDetails({
    super.key,
    required this.image,
    required this.name,
    required this.time,
  });

  final String image;
  final String name;
  final String time;

  @override
  State<ListDetails> createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity, // Width takes full space
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xff8A19D6),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      widget.image,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  // Correctly used here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            widget.time,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Assunto:...",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
