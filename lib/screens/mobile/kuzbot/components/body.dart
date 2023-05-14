import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../../../constants.dart';
import '../../../../model/BotMessage.dart';

class Body extends StatefulWidget {
  const Body({super.key});

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 238, 238, 238)),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
                child: Image(
              image: AssetImage("assets/images/KuzBOT.png"),
            )),
          ),
        ),
        Expanded(
            child: GroupedListView(
          padding: const EdgeInsets.all(8),
          reverse: true,
          order: GroupedListOrder.DESC,
          elements: botMessages,
          groupBy: (message) => DateTime(2022),
          groupHeaderBuilder: (BotMessage message) => const SizedBox(),
          itemBuilder: (context, BotMessage message) => Card(
            color: message.author == "Joel Lee"
                ? Color.fromARGB(255, 222, 229, 230)
                : Color.fromARGB(255, 255, 255, 255),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message.author,
                      style:
                          const TextStyle(fontSize: 15, color: kPrimaryColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(message.text),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: TextField(
            controller: msgController,
            decoration: const InputDecoration(
              hintMaxLines: 3,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              hintText: "What is your question",
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
            ),
            onSubmitted: (text) {
              final message = BotMessage(
                author: "Joel Lee",
                text: text,
                startTime: DateTime.now(),
              );
              final botreply = BotMessage(
                author: "KuzBOT",
                text:
                    "Please we are working on the AI Integration. We will soon be done with it",
                startTime: DateTime.now(),
              );
              setState(() {
                botMessages.add(message);
              });

              Timer(Duration(seconds: 1), () {
                setState(() {
                  botMessages.add(botreply);
                });
              });
              clearText();
            },
          ),
        )
      ],
    );
  }
}
