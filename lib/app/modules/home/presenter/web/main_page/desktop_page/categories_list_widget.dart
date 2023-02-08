import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';

class CategoriesListWidget extends StatelessWidget {
  CategoriesListWidget({super.key});

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: SizedBox(
          height: 200,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.mouse,
            }),
            child: ListView.builder(
              dragStartBehavior: DragStartBehavior.start,
              controller: scrollController,
              itemCount: images.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                final image = images[index];

                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          image,
                        ),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
