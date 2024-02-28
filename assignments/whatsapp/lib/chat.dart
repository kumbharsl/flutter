import 'package:flutter/material.dart';
import 'package:whatsapp/user.dart';
import 'package:whatsapp/chat_details.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({required Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Divider(height: 10),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(
                    chatData[index].avtar ?? 'assets/images/download(7).jpg'),
              ),
              title: Text(
                chatData[index].name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              subtitle: Text(
                chatData[index].message,
                style: const TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
              trailing: Text(
                chatData[index].time,
                style: const TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
              onTap: () {
                // print("");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatDetailsPage(
                              key: Key("value"),
                            )));
              },
            )
          ],
        ),
      ),
    );
  }
}
