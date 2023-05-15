import 'package:flutter/material.dart';
import '../../../../model/Cart.dart';
import '../../../../size_config.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
      child: ListView.builder(
          itemCount: demoCarts.length,
          itemBuilder: (context, index) => Dismissible(
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 223, 223),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    Spacer(),
                    Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 196, 105, 105),
                      size: 30,
                    )
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              key: Key(demoCarts[index].course.id.toString()),
              child: CartItemCard(cart: demoCarts[index]))),
    );
  }

  Row buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 10,
          width: 10,
        ),
        Column(
          children: [
            const Text(
              textAlign: TextAlign.center,
              "My Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(textAlign: TextAlign.center, "${demoCarts.length} Items")
          ],
        ),
        const SizedBox(
          height: 10,
          width: 10,
        )
      ],
    );
  }
}
