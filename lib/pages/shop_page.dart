import 'package:e_commerce_ui/model/cart.dart';
import 'package:e_commerce_ui/model/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(context: context, builder: (context) {
      return const AlertDialog(
        title: Text('Successfully added to cart'),
        content:  Text('goto and checkout your cart'),
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(12),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Bring power to your steps',
              style: TextStyle(fontSize: 17, color: Colors.grey[600]),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getShoeList().length,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                   onTap: ()=> addShoeToCart(shoe),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
