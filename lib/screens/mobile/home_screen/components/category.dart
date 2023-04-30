import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icons": Icons.construction, "text": "Artisans"},
      {"icons": Icons.computer, "text": "Computing"},
      {"icons": Icons.engineering, "text": "Engineering"},
      {"icons": Icons.bookmark_add_outlined, "text": "Accademic"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icons"],
                  text: categories[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String text;
  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionalScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionalScreenWidth(10)),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  icon,
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,),
            )
          ],
        ),
      ),
    );
  }
}
