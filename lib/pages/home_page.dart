import 'package:e_commerce_ui/components/bottom_nav_bar.dart';
import 'package:e_commerce_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  final List<Widget> page = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context)=>IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.black,),
          ),
        ),
        elevation:0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.6),
          child: Column(
            children: [
              DrawerHeader(child: Image.asset('assets/logo.png')),
              const Divider(
                color: Colors.grey,
              ),
              const ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('Home', style: TextStyle(color: Colors.white,),),
              ),
              const ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text('About', style: TextStyle(color: Colors.white, ),),
              ),
              const Spacer(),
              const ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('Logout', style: TextStyle(color: Colors.white, ),),
              ),
            ],
          ),
      ),
      body: page[selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
    );
  }
}
