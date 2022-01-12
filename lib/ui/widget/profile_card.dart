// import 'package:flutter/material.dart';

// class ProfileCard extends StatelessWidget {
//   const ProfileCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFF77529C),
//       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               const CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   'https://randomuser.me/api/portraits/men/81.jpg',
//                 ),
//                 radius: 26,
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Text(
//                       'Aria Dwitolio',
//                       style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                     ),
//                     const SizedBox(height: 2),
//                     Text(
//                       'Ketua RW',
//                       style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                             color: Colors.white,
//                           ),
//                     ),
//                   ],
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.settings,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
