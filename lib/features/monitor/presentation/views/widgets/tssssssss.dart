// import 'package:drogovat/features/monitor/presentation/views/widgets/drug_container.dart';
// import 'package:drogovat/features/monitor/presentation/views/widgets/drug_info_check.dart';
// import 'package:drogovat/features/monitor/presentation/views/widgets/time_container.dart';
// import 'package:drogovat/features/monitor/presentation/views/widgets/vital_sign_container.dart';
// import 'package:flutter/material.dart';
//
// import 'dose_info_container.dart';
//
// class Tssss extends StatelessWidget {
//   const Tssss({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             TimeContainer(w: 745),
//             SizedBox(height: 10),
//             VitalSignContainer(w: 745),
//             SizedBox(height: 10),
//             DoseInfoContainer(w: 745),
//           ],
//         ),
//         SizedBox(width: 10,),
//         DrugContainer()
//       ],
//     );
//   }
// }
// // AnimatedCrossFade(
// // firstChild: FullMonitorView(),
// // secondChild: Tssss(),
// // crossFadeState: CrossFadeState.showSecond,
// // //showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
// // firstCurve: Curves.linearToEaseOut,
// // secondCurve: Curves.linearToEaseOut,
// // duration: Duration(
// // milliseconds: 500,
// // ),
// // )