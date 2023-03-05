import 'package:flutter/material.dart';

import '../../../../core/layout/app_adaptative_builder.dart';
import '../../widgets/side_menu_widget.dart';

class MobileDashBoardPage extends StatelessWidget {
  const MobileDashBoardPage({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: Row(
        children: [
          if (AdaptativeBuilder.isDesktop(context))
            Expanded(
              child: SideMenu(),
            ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(
                  height: 100,
                  //width: constraints.maxWidth * 0.75,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text('Header'),
                  ),
                ),
                Container(
                  height: constraints.maxHeight - 200,
                  //width: constraints.maxWidth * 0.75,
                  color: Colors.amber,
                  child: const Center(
                    child: Text('Main Content'),
                  ),
                ),
                Container(
                  height: 100,
                  //width: constraints.maxWidth * 0.75,
                  color: Colors.lightGreen,
                  child: const Center(
                    child: Text('Footer'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
