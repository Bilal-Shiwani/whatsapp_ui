import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/call_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF008069),
            automaticallyImplyLeading: false,
            title: const Text(
              "Whatsapp",
              style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
            ),
            elevation: 1,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
            ],
            bottom: const TabBar(
              indicatorWeight: 3,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
              splashFactory: NoSplash.splashFactory,
              tabs: [
                Tab(
                  text: ("Chat"),
                ),
                Tab(
                  text: ("Status"),
                ),
                Tab(
                  text: ("Calls"),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ]),
        ));
  }
}
