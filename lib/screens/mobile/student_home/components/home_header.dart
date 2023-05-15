import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../cart/cart_screen.dart';
import 'icon_btn_with_count.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconButtonWithCount(
            icon: Icons.local_mall_outlined,
            numberOfItems: 2,
            press: () {
              //go to the cart page
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
