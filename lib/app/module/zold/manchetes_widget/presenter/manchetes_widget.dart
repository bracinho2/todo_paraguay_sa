import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/functions.dart';

class ManchetesWidget extends StatelessWidget {
  final List<String> images;
  ManchetesWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final _scrollBarController = ScrollController();

  void goForward() {
    _scrollBarController.animateTo(
        _scrollBarController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn);
  }

  void goBack() {
    _scrollBarController.animateTo(
        _scrollBarController.position.minScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconButton(
                icon: EvaIcons.arrowBack,
                onTap: () => goBack(),
              ),
              iconButton(
                icon: EvaIcons.arrowForward,
                onTap: () => goForward(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget iconButton({
  required IconData icon,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50,
      width: 50,
      color: Colors.amber,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    ),
  );
}
