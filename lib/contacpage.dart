import 'package:flutter/material.dart';
import 'package:resume/utils/page.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User information",),
        ),
        body: IndexedStack(
          index: pageIndex,
          children: [
            Text("page 1"),
            Text("page 2"),
            Text("page 3"),
            Text("page 4"),
            Text("page 5"),
            Text("page 6"),
          ],
        ),
      ),
    );
  }
}
