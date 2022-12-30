import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';

class SingleAnnouncementWidget extends StatelessWidget {
  const SingleAnnouncementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              images[1],
            ),
          ),
        ),
      ),
    );
  }
}
