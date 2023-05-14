import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuziem/constants.dart';

import '../../../../model/Message.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              message.author,
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              message.text,
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    Text("${message.replies.length}")
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.watch,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "09",
                                      style: TextStyle(color: kPrimaryColor),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )))
            ],
          ),
        ),
        Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Color.fromARGB(255, 238, 237, 237),
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                          message.replies.length,
                          (index) => Column(
                                children: [
                                  Container(
                                    width: size.width,
                                    child: Row(children: [
                                      Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "${message.replies[index]["user"]}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      )),
                                    ]),
                                  ),
                                  Container(
                                    width: size.width,
                                    child: Row(children: [
                                      Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            "${message.replies[index]["message"]}",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      )),
                                    ]),
                                  ),
                                  Divider()
                                ],
                              ))
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
