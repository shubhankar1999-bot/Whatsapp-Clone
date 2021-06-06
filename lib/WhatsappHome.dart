import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Constraints.dart';

import 'components/bottom_navigation_ui.dart';
import 'components/chat_screen_ui.dart';
import 'components/story_screen_ui.dart';
class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: miniColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("WhatsApp UI"),
        backgroundColor: miniColor,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            StoryScreenUI(),
            ChatScreenUI(),
          ],
        ),
      ),
      floatingActionButton: BottomNavigation(tabController: _tabController),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}