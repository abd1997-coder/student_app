// import 'package:flutter/material.dart';
// import 'package:student_app/core/common/models/unit_model.dart';
// import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
// import 'package:student_app/core/common/widget/price_widget.dart';
// import 'package:student_app/core/core.dart';

// class LessonWidget extends StatelessWidget {
//   final Unit unit;
//   final VoidCallback onToggle;

//   const LessonWidget({Key? key, required this.unit, required this.onToggle})
//     : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Card(
//           margin: const EdgeInsets.only(bottom: 8),
//           color: const Color(0xffEEEEEE),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: InkWell(
//             onTap: onToggle,
//             highlightColor: Colors.transparent,
//             splashColor: Colors.transparent,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
//               child: Row(
//                 children: <Widget>[
//                   const Icon(
//                     Icons.play_circle_fill_outlined,
//                     color: Palette.primary,
//                     size: 35,
//                   ),
//                   const SizedBox(width: 6),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           unit?.name??"",
//                           style: Theme.of(
//                             context,
//                           ).textTheme.bodyMedium!.copyWith(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 15,
//                           ),
//                         ),
//                         Row(
//                           children: <Widget>[
//                             const Icon(
//                               Icons.play_circle_fill,
//                               size: 18,
//                               color: Color(0xffBEBEBE),
//                             ),
//                             Text(
//                               unit.units!.length.toString(),
//                               style: const TextStyle(
//                                 color: Color(0xffBEBEBE),
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   PriceWidget(point: "5"),
//                   Icon(
//                     unit.isExpanded
//                         ? Icons.keyboard_arrow_up
//                         : Icons.keyboard_arrow_down,
//                     color: Palette.primary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         // if (unit.isExpanded)
//         //   Padding(
//         //     padding: const EdgeInsets.symmetric(horizontal: 8),
//         //     child: Column(
//         //       children:
//         //           unit.units
//         //               .map(
//         //                 (Unit unit) => InkWell(
//         //                   onTap: () {
//         //                     context.router.push(const PlayerRoute());
//         //                   },
//         //                   child: SessionWidget(videoModel: unit),
//         //                 ),
//         //               )
//         //               .toList(),
//         //     ),
//         //   ),
//       ],
//     );
//   }
// }
