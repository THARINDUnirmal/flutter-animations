import 'package:flutter/material.dart';

class Implicit extends StatefulWidget {
  const Implicit({super.key});

  @override
  State<Implicit> createState() => _ImplicitState();
}

class _ImplicitState extends State<Implicit> {
  bool isExpaned = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpaned = !isExpaned;
        });
      },
      child: Center(
        child: AnimatedContainer(
          curve: Curves.linear,
          duration: const Duration(
            seconds: 1,
          ),
          width: isExpaned ? 200 : 100,
          height: isExpaned ? 200 : 100,
          color: isExpaned ? Colors.amber : Colors.red,
          child: const Center(
            child: Text("Flutter"),
          ),
        ),
      ),
    );
  }
}
