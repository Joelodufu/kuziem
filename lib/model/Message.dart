import 'package:flutter/material.dart';

class Message {
  final String author, text, replyTo;
  final DateTime startTime;
  final List<Map<String, String>> replies; //iD for replies
  Message(
      {required this.author,
      required this.text,
      required this.startTime,
      this.replies = const [],
      this.replyTo = ""});
}

List<Message> demoMessages = [
  Message(
      author: "Sunday Ojabo",
      text:
          "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?`",
      startTime: DateTime.now(),
      replies: [
        {
          "user": "Adbul Saromi",
          "message":
              "This piano class with Anderson has a complicated explanation od c chords. Can someone help me recomend an easy tutorial for C chord Progressions?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Joshua Alodugo",
          "message":
              "Can someone tell me how to make this payment without going to the bank?"
        },
        {
          "user": "Dayo Olujobi",
          "message":
              "Why is the 'S' in sustain bad to call while voicing? In the vocal class Justine had last week he spoke about it. I have tried google, no solutions."
        },
      ],
      replyTo: "Joel Lee"),
  Message(
      author: "SImon Ksids",
      text:
          "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?`",
      startTime: DateTime.now(),
      replies: [
        {
          "user": "emmanuel john",
          "message":
              "Joel sdsdjl sdjnlsdlns sdnklsndklls sdmlsmkdlmskd sdkmklsmdlmkmsd sdksmdlmsmkmsd sdkmsldmklkmsldmlmksd sdmklmsdlmkmsd sdlkmklsdmkd"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
      ],
      replyTo: "Joel Lee"),
  Message(
      author: "Lincoln Kole",
      text:
          "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?`",
      startTime: DateTime.now(),
      replies: [
        {
          "user": "Simon Peters",
          "message":
              "Joel sdsdjl sdjnlsdlns sdnklsndklls sdmlsmkdlmskd sdkmklsmdlmkmsd sdksmdlmsmkmsd sdkmsldmklkmsldmlmksd sdmklmsdlmkmsd sdlkmklsdmkd"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
      ],
      replyTo: "Joel Lee"),
  Message(
      author: "Samuel Goles",
      text:
          "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?`",
      startTime: DateTime.now(),
      replies: [
        {
          "user": "Joseph James",
          "message":
              "Joel sdsdjl sdjnlsdlns sdnklsndklls sdmlsmkdlmskd sdkmklsmdlmkmsd sdksmdlmsmkmsd sdkmsldmklkmsldmlmksd sdmklmsdlmkmsd sdlkmklsdmkd"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
        {
          "user": "Adams Adamu",
          "message":
              "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?"
        },
      ],
      replyTo: "Joel Lee"),
  Message(
      author: "Blessed Ojimo",
      text:
          "How do you make a sandwich that has both agbado and casava with a little bit of bole inside. considering the townhall meeting?`",
      startTime: DateTime.now(),
      replies: [
        {
          "user": "Emmanuel James",
          "message":
              "I would rather take the view from the top were the refference point was taken from, how could we do this without a guidiance effort"
        }
      ],
      replyTo: "Joel Lee"),
].reversed.toList();
