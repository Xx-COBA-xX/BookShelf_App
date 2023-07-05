import 'package:flutter/material.dart';
import 'package:my_library_app/screens/widgets/custom_app_bar.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyCustomAppBar(title: "My Library"),
      body: Center(
        child: Text("Library screen"),
      ),
    );
  }
}
