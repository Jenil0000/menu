import 'package:flutter/material.dart';

class frist extends StatefulWidget {
  const frist({Key? key}) : super(key: key);

  @override
  State<frist> createState() => _fristState();
}

class _fristState extends State<frist> {
  final List<String> _names = [
    'Dosa (Butter)	125/-',
    'Onion Dosa (Butter)	136/-',
    'Onion Dosa (Butter)	136/-',
    'Onion Uttapam	155/-',
    'Laccha Parantha	53/-',
    'Fruit Punch	150/-',
    'Red Sea	150/- ',
    'Lasanana Roll	133/-',
    'Jain Spl. Pizza	250/-',
    'Plain Cheese Pizza	190/-',
  ];
  final List<String> que = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  String? queValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel menu'),
      ),
      body: ListView.builder(
        itemBuilder: (_, i) {
          String name = _names[i];
          return ListTile(
            onTap: () {

            },
            title:
            Text('$name'),
            trailing: DropdownButton(
              hint: Text(
                'Que ',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
              ),
              items: que
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                  .toList(),
              value: queValue,
              onChanged: (value) {
                setState(() {
                  queValue =value as String;
                });
              },
            ),
          );
        },
        itemCount: _names.length,
      ),

    );
  }
}
