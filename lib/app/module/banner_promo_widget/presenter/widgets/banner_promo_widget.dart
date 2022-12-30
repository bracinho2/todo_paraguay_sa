import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/banner_promo_widget/presenter/store/banner_promo_store.dart';

class BannerPromoWidget extends StatefulWidget {
  final BannerPromoStore store;
  const BannerPromoWidget({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  State<BannerPromoWidget> createState() => _BannerPromoWidgetState();
}

class _BannerPromoWidgetState extends State<BannerPromoWidget> {
  final _pageController = PageController();
  int _selectedIndicator = 0;
  late Timer _timer;
  late int bannerCount;

  void _pageControllerListener() {
    _pageController.addListener(() {
      final int next = _pageController.page!.round();
      if (_selectedIndicator != next) {
        setState(() {
          _selectedIndicator = next;
        });
      }
    });
  }

  void _bannerPass() {
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      final page = Random().nextInt(widget.store.banners.value.length);

      setState(() {
        _pageController.animateToPage(page,
            duration: const Duration(seconds: 1), curve: Curves.easeIn);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    widget.store.getBanners();
    _pageControllerListener();
    _bannerPass();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: 400,
      width: mediaQueryData.size.width,
      child: ValueListenableBuilder(
        valueListenable: widget.store.banners,
        builder: (context, banners, _) {
          return Stack(
            children: [
              BannerView(
                itens: banners
                    .map(
                      (banner) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              banner.link,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                controller: _pageController,
              ),
              BannerIndicator(
                itens: banners,
                controller: _pageController,
                selectedIndicator: _selectedIndicator,
              ),
            ],
          );
        },
      ),
    );
  }
}

class BannerView extends StatelessWidget {
  final List<Widget> itens;
  final PageController controller;
  const BannerView({
    Key? key,
    required this.itens,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: PageView(
        controller: controller,
        children: itens,
      ),
    );
  }
}

class BannerIndicator<T> extends StatelessWidget {
  final List<T> itens;
  final PageController controller;
  final int selectedIndicator;
  const BannerIndicator({
    Key? key,
    required this.itens,
    required this.controller,
    required this.selectedIndicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: itens.asMap().entries.map((entry) {
            int index = entry.key;
            return InkWell(
              onTap: () {
                controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: selectedIndicator == index
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
          }).toList(),
        ),
      ),
    );
  }
}
