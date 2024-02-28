import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/user.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});
  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.group)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: chatData.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: const Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: const Color(0xff075e57),
        bottom: TabBar(
          automaticIndicatorColorAdjustment: true,
          labelColor: const Color.fromARGB(255, 255, 255, 255),
          controller: _tabController,
          tabs: topTabs,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          ChatPage(key: Key("value")),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
