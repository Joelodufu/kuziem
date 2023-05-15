import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';

import '../../../../model/Message.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.message});
  final Message message;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var msgController = TextEditingController();
  void clearText() {
    msgController.clear();
  }

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
                              widget.message.author,
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.message.text,
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
                                    Text("${widget.message.replies.length}")
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
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Color.fromARGB(255, 238, 237, 237),
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                          widget.message.replies.length,
                          (index) => Column(
                                children: [
                                  Container(
                                    width: size.width,
                                    child: Row(children: [
                                      Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "${widget.message.replies[index]["user"]}",
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
                                            "${widget.message.replies[index]["message"]}",
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
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: TextField(
            controller: msgController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                contentPadding: EdgeInsets.all(12),
                suffixIcon: Icon(Icons.arrow_forward_ios),
                hintText: "reply..."),
            onSubmitted: (text) {
              final reply = {"user": "Joel Odufu", "message": "$text"};
              setState(() => widget.message.replies.add(reply));
              clearText();
            },
          ),
        )
      ],
    );
  }
}
