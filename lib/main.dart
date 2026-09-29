import 'package:flutter/material.dart';
import 'mockups/mockup_relax.dart';
import 'mockups/mockup_meditate.dart';
import 'mockups/mockup_design.dart';
import 'mockups/mockup_organizer.dart';

void main() {
  runApp(const FigmaFeedApp());
}

class FigmaFeedApp extends StatelessWidget {
  const FigmaFeedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma Designs Showcase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE9ECF2),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Все макеты Figma', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          physics: const BouncingScrollPhysics(),
          children: const [
            _ScreenCardWrapper(child: MockupRelax()),
            _ScreenCardWrapper(child: MockupMeditate()),
            _ScreenCardWrapper(child: MockupDesign()),
            _ScreenCardWrapper(child: MockupOrganizer()),
          ],
        ),
      ),
    );
  }
}

class _ScreenCardWrapper extends StatelessWidget {
  final Widget child;

  const _ScreenCardWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 28),
        constraints: const BoxConstraints(maxWidth: 420),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: child,
      ),
    );
  }
}