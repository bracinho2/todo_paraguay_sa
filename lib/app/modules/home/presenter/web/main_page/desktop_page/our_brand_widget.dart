import 'package:flutter/material.dart';

class OurBrandWidget extends StatelessWidget {
  const OurBrandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: GridView.count(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          childAspectRatio: 1 / 3,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(Icons.query_stats),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Statistic',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Suas estatisticas',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}
