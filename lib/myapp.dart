// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(myapp());
// }
//
// class myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: myapp(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final List<String> _names = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//     'Item6',
//     'Item7',
//     'Item8',
//     'Item9',
//     'Item10',
//   ];
//   final List<String> que = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '10',
//   ];
//   String? queValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hotel menu'),
//       ),
//       body: ListView.builder(
//         itemBuilder: (_, i) {
//           String name = _names[i];
//           return ListTile(
//             onTap: () {
//
//             },
//             title: Text('$name'),
//             trailing: DropdownButton(
//               hint: Text(
//                 'Que ',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Theme
//                       .of(context)
//                       .hintColor,
//                 ),
//               ),
//               items: que
//                   .map((item) =>
//                   DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: const TextStyle(
//                         fontSize: 14,
//                       ),
//                     ),
//                   ))
//                   .toList(),
//               value: queValue,
//               onChanged: (value) {
//                 setState(() {
//                   queValue =name;
//                 });
//               },
//             ),
//           );
//         },
//         itemCount: _names.length,
//       ),
//
//     );
//   }
// }