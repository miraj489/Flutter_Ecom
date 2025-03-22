import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../common/widgets/app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Shop",
        backButton: true,
        firstIcon: Iconsax.notification_bing_outline,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Banner Image
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://img.pikbest.com/origin/10/01/82/867pIkbEsTAIq.png!w700wp",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Featured Products",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            child: Image.network(
                              "https://gadgetbreeze.com.bd/wp-content/uploads/2024/05/JBL-T180A-Pure-Bass-Wired-Earphone-1.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Earphone HD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "1,500 TK",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber, size: 16),
                                    Text(" 4.6"),
                                    Text(" 86 Reviews", style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            child: Image.network(
                              "https://img.freepik.com/free-psd/3d-blue-headphones-isolated-transparent-background_191095-16409.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Earphone HD Wireless",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "5,500 TK",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber, size: 16),
                                    Text(" 4.6"),
                                    Text(" 86 Reviews", style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
