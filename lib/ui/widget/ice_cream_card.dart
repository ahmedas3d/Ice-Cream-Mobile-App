import 'package:flutter/material.dart';

class IceCreamCard extends StatelessWidget {
  const IceCreamCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffB66DFF), // Use const
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  // Add const here
                  "Gerenciar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8), // Add const here
                const Text(
                  "Estoque",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8), // Add const here
                ElevatedButton(
                  onPressed: () {
                    ///////////
                  },
                  child: const Text(
                    "Acessar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color(0xff8A19D6)), // Use const
                    minimumSize: MaterialStateProperty.all(
                        const Size(150, 50)), // Width, Height
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 30), // Padding inside the button
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust border radius here
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [Image.asset("assets/images/Ice_Cream.png")],
            ),
          ),
        ],
      ),
    );
  }
}
