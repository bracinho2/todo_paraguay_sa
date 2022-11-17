import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/functions.dart';

class ManchetesWidget extends StatelessWidget {
  final List<String> images;
  ManchetesWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final _scrollBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Scrollbar(
          controller: _scrollBarController,
          trackVisibility: true,
          interactive: true,
          thumbVisibility: true,
          child: ListView.builder(
            controller: _scrollBarController,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) => Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[generateInt(images)]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    bottom: 10,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.amber,
                    child: const Text(
                      'Ciudad del Leste - Paraguay',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
