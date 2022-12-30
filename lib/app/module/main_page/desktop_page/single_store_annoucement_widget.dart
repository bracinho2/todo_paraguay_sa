import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';

class SingleStoreAnnoucementWidget extends StatelessWidget {
  const SingleStoreAnnoucementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        50,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  images[6],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Container(
              padding: const EdgeInsets.all(40),
              color: Colors.green,
              height: 400,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Save Money in This Store since 0% to 50%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Conheça esta nova loja! Aproveite as ofertas de inauguração!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textDirection: TextDirection.ltr,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
