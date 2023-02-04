import 'package:brain_train/reusableWidgets/exportWidget.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [CustomSliverAppBar()],
      ),
    );
  }
}
