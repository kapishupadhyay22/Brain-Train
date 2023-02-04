import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: MediaQuery.of(context).size.width * 0.25,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assests/images/logo.png'),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.message_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_active_sharp),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search_sharp),
          onPressed: () {},
        ),
        IconButton(
          icon: const CircleAvatar(
            radius: 25,
            foregroundImage: AssetImage('assests/images/userIcon.png'),
            backgroundColor: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
