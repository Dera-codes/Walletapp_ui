import 'package:flutter/material.dart';
import 'package:walletapp_ui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'My',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Cards',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),

                //plus button
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add)),
              ],
            ),
          ),

          SizedBox(height: 25),

          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            ),
          )

          // 3 buttons -> send + pay + bills

          // column -> stats + transactions
        ]),
      ),
    );
  }
}
