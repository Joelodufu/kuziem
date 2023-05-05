import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/joellee.jpg"),
          ),
          Positioned(
              right: -12,
              bottom: 0,
              child: InkWell(
                onTap: () {
                  //Change Profile Pics
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(Icons.camera),
                ),
              ))
        ],
      ),
    );
  }
}
