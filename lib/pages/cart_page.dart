import 'package:e_commerce_ui/components/cart_item.dart';
import 'package:e_commerce_ui/model/cart.dart';
import 'package:e_commerce_ui/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCart()[index];
                  return CartItem(shoe: individualShoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
