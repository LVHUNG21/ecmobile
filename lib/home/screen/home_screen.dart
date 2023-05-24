import 'package:ecommerce_mobile/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            color: GlobalVariables.backgroundColor,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Mega Mall",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: GlobalVariables.MegaTextColor,
                  fontSize: 18,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 39.50),
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: Image.asset('assets/images/cart.png'),
                onPressed: () {
                  // Add your cart button onPressed callback here
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: Image.asset('assets/images/ring.png'),
                onPressed: () {
                  // Add your notification button onPressed callback here
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Image.asset('assets/images/search.png'),
                onPressed: () {
                  // Add your notification button onPressed callback here
                },
              ),
              hintText: "Search Amazon.in",
              hintStyle: const TextStyle(
                color: Color(0xffc4c5c4),
                fontSize: 14,
                fontFamily: "DMSans",
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
