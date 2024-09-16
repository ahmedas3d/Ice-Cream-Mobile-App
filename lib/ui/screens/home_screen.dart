import 'package:flutter/material.dart';
import 'package:ice_cream_mobile/ui/widget/Curds.dart';
import 'package:ice_cream_mobile/ui/widget/appbar.dart';
import 'package:ice_cream_mobile/ui/widget/ice_cream_card.dart';
import 'package:ice_cream_mobile/ui/widget/list_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 248),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Add padding here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarScreen(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 35,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff8A19D6),
                        ),
                        child: Center(
                          child: Image.asset("assets/images/filter.png"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const IceCreamCard(),
                  const SizedBox(height: 20),
                  const Text(
                    "Estatisticas",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CurdsDetails(
                        num: "920",
                        detail: "Product",
                        imagePath: "assets/images/bar_chart.png",
                      ),
                      CurdsDetails(
                        num: "52",
                        detail: "Vendidos",
                        imagePath: "assets/images/graph.png",
                      ),
                      CurdsDetails(
                        num: "R\$ 9mil",
                        detail: "Lucro",
                        imagePath: "assets/images/bar-chart-2.png",
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mensagens recentes",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Ver mais",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff8A19D6),
                            ),
                            child: const Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              const [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Padding from left and right
                  child: ListDetails(
                    image: "assets/images/image1.png",
                    name: "Cupcake",
                    time: "1h",
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Padding from left and right
                  child: ListDetails(
                    image: "assets/images/image1.png",
                    name: "Cupcake",
                    time: "1h",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
