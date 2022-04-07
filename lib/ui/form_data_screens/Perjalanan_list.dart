// import 'package:flutter/material.dart';
// import 'package:peduli_diri/models/perjalanan_model.dart';
// import 'package:peduli_diri/services/database_handler.dart';
// import 'package:peduli_diri/utility/constans.dart';

// class PerjalananList extends StatelessWidget {
//   List<PerjalananModel>? perjalanans;
//   var dbHelper = DbHelper();

// PerjalananList(
//   {  }
// );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         itemCount: perjalanans!.length,
//         itemBuilder: (BuildContext context, int index,){
//           return Dismissible(
//             key: Key('${perjalanans![index].id}'), 
//             child: Padding(
//               padding: EdgeInsets.all(6),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: kSecondColor,
//                   borderRadius: BorderRadius.circular(5)
//                 ),
//                 width: 200,
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '${perjalanans![index].lokasi}'
//                       ),
//                       Text(
//                         '${perjalanans![index].tanggal} ${perjalanans![index].jam}'
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           );
//         },
//       ),
//     );
//   }
// }