import 'package:first/Moduls/componat/componats.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-photo/arabic-lantern-with-burning-candle-night-sky-with-waning-crecent-moon-background-ramadan-generative-ai_796128-603.jpg?w=1380'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Chats',
                style: TextStyle(color: Colors.black),
              ),
              Spacer(),
              CircleAvatar(
                radius: 18,
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 18,
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
        child: Column(
          children: [
            Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(10),
                      left: Radius.circular(10),
                    )),
                child: myTextFormField(
                    borderColor: Colors.black,
                    labelColor: Colors.black,
                    labelText: 'Search',
                    prefixIcon: Icons.search_rounded)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=1380&t=st=1678303508~exp=1678304108~hmac=21bf8231e3d63fed15eb12b64a0f2832b2aa6cbad348e74eca111a9f0850a7f0'),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 7,
                          ),
                        ],
                      ),
                      Text(
                        'AbdelRahman Youssry mohammed ahmed',
                        maxLines: 2,
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ),
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     titleSpacing: 20,
    //     backgroundColor: Colors.white,
    //     elevation: 0.00,
    //     title: Row(
    //       children: const [
    //         CircleAvatar(
    //           backgroundImage: NetworkImage(
    //               "https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/64740059_10217163728877610_4626933787983347712_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=7-4_0KT3-E0AX9C23Kt&_nc_ht=scontent.fcai20-6.fna&oh=650773de55b780cdd93931729b738e43&oe=613B9112"),
    //           radius: 20.0,
    //         ),
    //         SizedBox(
    //           width: 15.0,
    //         ),
    //         Text(
    //           "Chats",
    //           style: TextStyle(color: Colors.black),
    //         ),
    //       ],
    //     ),
    //     actions: [
    //       IconButton(
    //           onPressed: () {},
    //           icon: const CircleAvatar(
    //             radius: 15,
    //             backgroundColor: Colors.blue,
    //             child: Icon(
    //               Icons.camera_alt,
    //               size: 16,
    //               color: Colors.white,
    //             ),
    //           )),
    //       IconButton(
    //           onPressed: () {},
    //           icon: const CircleAvatar(
    //             radius: 15,
    //             backgroundColor: Colors.blue,
    //             child: Icon(
    //               Icons.edit,
    //               size: 16,
    //               color: Colors.white,
    //             ),
    //           ))
    //     ],
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(20.0),
    //     child: SingleChildScrollView(
    //       child:
    //           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //         Container(
    //           padding: const EdgeInsetsDirectional.all(5.0),
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(5.0),
    //               color: Colors.grey[300]),
    //           child: Row(
    //             children: const [
    //               Icon(Icons.search),
    //               SizedBox(
    //                 width: 10,
    //               ),
    //               Text(
    //                 "Search",
    //                 style: TextStyle(fontSize: 16.0),
    //               ),
    //             ],
    //           ),
    //         ), //search
    //         const SizedBox(
    //           height: 20,
    //         ),
    //         SizedBox(
    //           height: 100,
    //           child: ListView.separated(
    //               scrollDirection: Axis.horizontal,
    //               itemBuilder: (context, index) => buildStoryItems(),
    //               separatorBuilder: (context, index) => const SizedBox(
    //                     width: 20,
    //                   ),
    //               itemCount: 8),
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),
    //         ListView.separated(
    //             shrinkWrap: true,
    //             physics: const NeverScrollableScrollPhysics(),
    //             itemBuilder: (context, index) => buildChatItems(),
    //             separatorBuilder: (context, index) => const SizedBox(
    //                   height: 20,
    //                 ),
    //             itemCount: 15)
    //       ]),
    //     ),
    //   ),
    // );
  }

// Widget buildChatItems() => Row(children: [
//       Stack(
//         alignment: AlignmentDirectional.bottomEnd,
//         children: const [
//           CircleAvatar(
//             backgroundImage: NetworkImage(
//                 "https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/64740059_10217163728877610_4626933787983347712_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=7-4_0KT3-E0AX9C23Kt&_nc_ht=scontent.fcai20-6.fna&oh=650773de55b780cdd93931729b738e43&oe=613B9112"),
//             radius: 30.0,
//           ),
//           Padding(
//             padding: EdgeInsetsDirectional.only(end: 3.0, bottom: 3.0),
//             child: CircleAvatar(
//               radius: 7,
//               backgroundColor: Colors.red,
//             ),
//           )
//         ],
//       ),
//       const SizedBox(
//         width: 10,
//       ),
//       Expanded(
//         child:
//             Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           const Text(
//             "Abdelrahman Youssry moahmmed elsaid morssy",
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Row(
//             children: [
//               const Expanded(
//                   child: Text(
//                 "Hello Abdo how are you now are you ok ?",
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//               )),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 5),
//                 child: Container(
//                     width: 7,
//                     height: 7,
//                     decoration: const BoxDecoration(
//                         color: Colors.blue, shape: BoxShape.circle)),
//               ),
//               const Text("02:00 pm")
//             ],
//           ),
//         ]),
//       ),
//     ]);
// Widget buildStoryItems() => SizedBox(
//       width: 60,
//       child: Column(
//         children: [
//           Stack(
//             alignment: AlignmentDirectional.bottomEnd,
//             children: const [
//               CircleAvatar(
//                 backgroundImage: NetworkImage(
//                     "https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/64740059_10217163728877610_4626933787983347712_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=7-4_0KT3-E0AX9C23Kt&_nc_ht=scontent.fcai20-6.fna&oh=650773de55b780cdd93931729b738e43&oe=613B9112"),
//                 radius: 30.0,
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.only(end: 3.0, bottom: 3.0),
//                 child: CircleAvatar(
//                   radius: 7,
//                   backgroundColor: Colors.red,
//                 ),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           const Text(
//             "Abdelrahman Youssry mohammed",
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ],
//       ),
//     );
}
