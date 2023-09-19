import 'package:e_commerce_ui/model/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(shoe.imagePath),
            Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                    color: Colors.black,
                  ),
                  child: IconButton(
                    onPressed: onTap,
                    icon: const Icon(Icons.add, color: Colors.white,),
                  ),
                )
,              ],
            )
          ],
        ),
      ),
    );
  }
}
