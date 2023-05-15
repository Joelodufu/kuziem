import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/model/Message.dart';

import '../../question_details/question_details_screen.dart';

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
      children: [
        Expanded(
            child: GroupedListView(
          padding: const EdgeInsets.all(8),
          reverse: true,
          order: GroupedListOrder.DESC,
          elements: demoMessages,
          groupBy: (message) => DateTime(2022),
          groupHeaderBuilder: (Message message) => const SizedBox(),
          itemBuilder: (context, Message message) => Card(
            color: message.author == "Joel Lee"
                ? Color.fromARGB(255, 240, 247, 239)
                : Color.fromARGB(255, 255, 255, 255),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionDetailsScreen(
                                message: message,
                              )));
                },
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
                hintText: "Type your question here..."),
            onSubmitted: (text) {
              final message = Message(
                author: "Joel Lee",
                text: text,
                startTime: DateTime.now(),
              );
              setState(() => demoMessages.add(message));
            },
          ),
        )
      ],
    );
  }
}
