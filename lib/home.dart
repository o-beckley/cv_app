import 'package:cv_app/cv_screen.dart';
import 'package:cv_app/edit_screen.dart';
import 'package:flutter/material.dart';
import 'models/cv_model.dart';

class Home extends StatefulWidget {
  const Home({required this.model, super.key});
  final CVModel model;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late CVModel model;
  late List<Widget> body;
  @override
  void initState() {
    super.initState();
    model = widget.model;
    body = [CVScreen(model: model), EditScreen(model: model)];
  }
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_outlined), label: 'Edit')
        ],
      ),
    );
  }
}
