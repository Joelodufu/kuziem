import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../model/Cart.dart';
import '../../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: getProportionalScreenWidth(88),
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 242, 243),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(cart.course.images[0]),
              ),
            ),
          ),
          SizedBox(
            width: getProportionalScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.course.title,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "₦${cart.course.price}",
                  style: const TextStyle(
                    color: kSecoundaryColor,
                  ),
                  children: [
                    TextSpan(
                        text: "  X${cart.numOfItems}",
                        style: const TextStyle(color: Colors.grey))
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
