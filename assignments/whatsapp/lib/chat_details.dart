import 'package:flutter/material.dart';
import 'package:whatsapp/message.dart';

class ChatDetailsPage extends StatefulWidget {
  ChatDetailsPage({required Key key}) : super(key: key);

  @override
  _ChatDetailsPage createState() => _ChatDetailsPage();
}

class _ChatDetailsPage extends State<ChatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: const Color(0xff075e57),
        title: const Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "Sagar",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: MessagePage(
            key: const Key("value"),
          )),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1.0),
                      ),
                      hintText: 'Type a message',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
