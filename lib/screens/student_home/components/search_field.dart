import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screnWidth * 0.6,
      padding: EdgeInsets.symmetric(vertical: getProportionalScreenWidth(16)),
      height: 50,
      decoration: BoxDecoration(
          color: const Color.fromARGB(159, 236, 236, 236),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) {
          //Search value
        },
        autocorrect: true,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Course",
            prefixIcon: const Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionalScreenWidth(20),
                vertical: getProportionalScreenWidth(9))),
      ),
    );
  }
}
