import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/campo_busca.dart';
import 'package:todo_paraguay_sa/dummy.dart';
import 'package:todo_paraguay_sa/functions.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height * 0.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(images[generateInt(images)]),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: SizedBox(
                    height: 150,
                    width: 250,
                    child: Image.asset('assets/todo_paraguay.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: mediaQueryData.size.width * 0.5,
                  ),
                  child: const InputTextFieldWidget(
                    actionIcon: true,
                    label: Text('Buscar'),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
          ),
        ],
      ),
    );
  }
}
