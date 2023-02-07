import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({
    super.key,
  });

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  final _pageController = PageController();
  int _selectedIndicator = 0;

  List<Widget> get rowIndicator => imagesBanner.asMap().entries.map((entry) {
        int index = entry.key;
        return InkWell(
          onTap: () {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: _selectedIndicator == index
                ? Container(
                    height: 10,
                    width: 5,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.rectangle,
                    ),
                  )
                : Container(
                    height: 5,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                    ),
                  ),
          ),
        );
      }).toList();

  @override
  void initState() {
    _pageController.addListener(() {
      final int next = _pageController.page!.round();
      if (_selectedIndicator != next) {
        setState(() {
          _selectedIndicator = next;
        });
      }
    });

    Timer.periodic(const Duration(seconds: 3), (timer) {
      final page = Random().nextInt(imagesBanner.length);

      setState(() {
        _pageController.animateToPage(page,
            duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: 200,
      width: mediaQueryData.size.width,
      child: Stack(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              controller: _pageController,
              children: imagesBanner,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: rowIndicator,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
