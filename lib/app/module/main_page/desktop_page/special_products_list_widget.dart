import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';

class SpecialProductsListWidget extends StatelessWidget {
  const SpecialProductsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: SizedBox(
        height: 300,
        width: 200,
        child: ListView.builder(
          itemCount: products.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          itemBuilder: (context, index) {
            final product = products[index];
            return SizedBox(
              height: 200,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(product),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Product Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'R\$ 50,00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Text('Lorem Ipsum Lorem'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
