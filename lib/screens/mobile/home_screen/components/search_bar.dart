import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(15)),
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(15)),
      height: getProportionalScreenHeight(50),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(getProportionalScreenWidth(30))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: getProportionalScreenWidth(5)),
            height: getProportionalScreenHeight(50),
            width: getProportionalScreenWidth(300),
            child: TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "Search Courses..."),
            ),
          ),
          Icon(
            Icons.search,
            size: getProportionalScreenWidth(25),
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
