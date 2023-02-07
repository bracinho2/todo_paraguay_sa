import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/desktop_page/exchange_widget.dart';

class RightBarWidget extends StatelessWidget {
  const RightBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Cotações",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  EvaIcons.bulbOutline,
                ),
                tooltip: "novidades",
              ),
            ],
          ),
          const ExchangeWidget(),
          const SizedBox(height: 20.0),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "News",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  EvaIcons.bellOutline,
                ),
                tooltip: "novidades",
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          ...taskGroup
              .map(
                (e) => _TaskGroup(
                  title: DateFormat('d MMMM').format(e[0].date),
                  data: e,
                  onPressed: (int index, ListTaskDateData data) {},
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _TaskGroup extends StatelessWidget {
  const _TaskGroup({
    required this.title,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<ListTaskDateData> data;
  final Function(int index, ListTaskDateData data) onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 20.0 / 2),
          ...data
              .asMap()
              .entries
              .map((e) => ListTaskDate(
                    data: e.value,
                    onPressed: () {},
                    dividerColor: _getSequenceColor(e.key),
                  ))
              .toList()
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Color _getSequenceColor(int index) {
    int val = index % 3;

    if (val == 2) {
      return Colors.lightBlue;
    } else if (val == 1) {
      return Colors.amber;
    } else {
      return Colors.redAccent;
    }
  }
}

final taskGroup = [
  [
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 2, hours: 10)),
      label: "5 posts on instagram",
      jobdesk: "Marketing",
    ),
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 2, hours: 11)),
      label: "Platform Concept",
      jobdesk: "Animation",
    ),
  ],
  [
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 4, hours: 5)),
      label: "UI UX Marketplace",
      jobdesk: "Design",
    ),
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 4, hours: 6)),
      label: "Create Post For App",
      jobdesk: "Marketing",
    ),
  ],
  [
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 6, hours: 5)),
      label: "2 Posts on Facebook",
      jobdesk: "Marketing",
    ),
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 6, hours: 6)),
      label: "Create Icon App",
      jobdesk: "Design",
    ),
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 6, hours: 8)),
      label: "Fixing Error Payment",
      jobdesk: "Programmer",
    ),
    ListTaskDateData(
      date: DateTime.now().add(const Duration(days: 6, hours: 10)),
      label: "Create Form Interview",
      jobdesk: "System Analyst",
    ),
  ]
];

class ListTaskDateData {
  final DateTime date;
  final String label;
  final String jobdesk;

  const ListTaskDateData({
    required this.date,
    required this.label,
    required this.jobdesk,
  });
}

class ListTaskDate extends StatelessWidget {
  const ListTaskDate({
    required this.data,
    required this.onPressed,
    this.dividerColor,
    Key? key,
  }) : super(key: key);

  final ListTaskDateData data;
  final Function() onPressed;
  final Color? dividerColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0 / 2),
        child: Row(
          children: [
            _buildHours(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _buildDivider(),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(),
                  const SizedBox(height: 5),
                  _buildSubtitle(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHours() {
    return Text(
      DateFormat.Hm().format(data.date),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 3,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        gradient: LinearGradient(
          colors: [
            dividerColor ?? Colors.amber,
            dividerColor?.withOpacity(.6) ?? Colors.amber.withOpacity(.6),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      data.jobdesk,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w200,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildSubtitle() {
    return Text(
      data.label,
      maxLines: 1,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
