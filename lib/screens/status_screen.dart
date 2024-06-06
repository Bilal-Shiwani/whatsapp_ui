
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage("images/bilal.png"),
            ),
            title: Text("My Status"),
            subtitle: Text("Tap here to update status"),
          ),
          const SizedBox(
            height: 25,
          ),
          // ignore: unnecessary_const
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Viewed updates"),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("images/bilal.png"),
                    ),
                    title: Text("Bilal Shiwani"),
                    subtitle: Text("Today, 12:00 PM"),
                  );
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(
              text: "Your status is updates are end to end encrypted",
              style: TextStyle(
                color: Color(0xFF008069),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFF008069),
                    child: const Icon(Icons.edit, color: Colors.white),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFF008069),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
