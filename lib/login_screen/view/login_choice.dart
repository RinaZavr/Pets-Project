import 'package:flutter/material.dart';
import 'login_inputs.dart';

class ChoiceView extends StatefulWidget {
  const ChoiceView({Key? key}) : super(key: key);

  @override
  State<ChoiceView> createState() => _ChoiceViewState();
}

class _ChoiceViewState extends State<ChoiceView> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Flexible(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth, 
            height: 5, 
            child: Container(
              color: const Color.fromRGBO(53, 170, 255, 1)
            )
          );
        }
      ),
    );
  }
}
    // return IntrinsicWidth(
    //   stepWidth: mediaQuery.size.width*0.83,
    //   child: Column(
    //     children: [
    //       // SizedBox(width: mediaQuery.size.width*0.83, height: 5, child: Container(color: Colors.black,)),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           TextButton(
    //             onPressed: () {
    //               AnimatedAlign(
    //                 alignment: Alignment.bottomLeft,
    //                 duration: const Duration(seconds: 1),
    //                 curve: Curves.fastOutSlowIn,
    //                 child: LayoutBuilder(
    //                   builder: (BuildContext context, BoxConstraints constraints) {
    //                     return SizedBox(
    //                       width: constraints.maxWidth, 
    //                       height: 5, 
    //                       child: Container(
    //                         color: const Color.fromRGBO(53, 170, 255, 1)
    //                       )
    //                     );
    //                   }
    //                 ),
    //               );
    //             },
    //             style: TextButton.styleFrom(
    //               fixedSize: const Size(124, 24),
    //                 backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
    //                 alignment: Alignment.center),
    //             child: const Text(
    //               'Вход',
    //               style: TextStyle(
    //                   fontFamily: 'Mulish',
    //                   fontWeight: FontWeight.w700,
    //                   fontSize: 16,
    //                   color: Colors.black),
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: () {
    //             },
    //             style: TextButton.styleFrom(
    //                 backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
    //                 alignment: Alignment.center),
    //             child: const Text(
    //               'Регистрация',
    //               style: TextStyle(
    //                   fontFamily: 'Mulish',
    //                   fontWeight: FontWeight.w700,
    //                   fontSize: 16,
    //                   color: Colors.black),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const Divider(
    //         height: 1,
    //         thickness: 1,
    //         indent: 0,
    //         color: Color.fromRGBO(53, 170, 255, 1),
    //       )
    //       // AnimatedAlign(
    //       //   alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
    //       //   duration: const Duration(seconds: 1),
    //       //   curve: Curves.fastOutSlowIn,
    //       //   child: const FlutterLogo(size: 50.0),
    //       // ),
    //     ]
        
    //   ),
    // );
    // return IntrinsicWidth(
    //   stepWidth: mediaQuery.size.width-64,
    //   child: Padding(
    //       padding: const EdgeInsets.only(top: 44),
    //       child: Column(
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               IntrinsicWidth(
    //                 stepWidth: (mediaQuery.size.width-64)/2,
    //                 child: Column(
    //                   children: const [
    //                     Text("Вход",
    //                       style: TextStyle(
    //                         fontFamily: 'Mulish',
    //                         fontWeight: FontWeight.w700,
    //                         fontSize: 16
    //                       ),
    //                     ),
    //                     Divider(
    //                       height: 20,
    //                       thickness: 5,
    //                       indent: 0,
    //                       color: Color.fromRGBO(53, 170, 255, 1),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //               IntrinsicWidth(
    //                 stepWidth: (mediaQuery.size.width-64)/2,
    //                 child: Column(
    //                   children: const [
    //                     Text("Регистрация",
    //                       style: TextStyle(
    //                         fontFamily: 'Mulish',
    //                         fontWeight: FontWeight.w700,
    //                         fontSize: 16,
    //                       ),
    //                     ),
    //                     Divider(
    //                       height: 20,
    //                       thickness: 5,
    //                       indent: 0,
    //                       color: Color.fromRGBO(53, 170, 255, 1),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //           const Divider(
    //                   height: 1,
    //                   thickness: 1,
    //                   indent: 0,
    //                   color: Color.fromRGBO(53, 170, 255, 1),
    //                 )
    //         ],
    //       ),
    //   ),
    // );

    // return IntrinsicWidth(
    //   stepWidth: mediaQuery.size.width-64,
    //   child: Padding(
    //     padding: const EdgeInsets.only(top: 44),
    //     child: Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: const[
    //             Text("Вход",
    //               style: TextStyle(
    //                 fontFamily: 'Mulish-Italic',
    //                 fontWeight: FontWeight.w700,
    //                 fontSize: 16
    //               ),
    //             ),
    //             Text("Регистрация",
    //               style: TextStyle(
    //                 fontFamily: 'Mulish-Italic',
    //                 fontWeight: FontWeight.w700,
    //                 fontSize: 16,
    //               ),
    //             ),
    //           ],
    //         ),
    //         const Divider(
    //           height: 20,
    //           thickness: 5,
    //           color: Color.fromRGBO(53, 170, 255, 1),
    //         )
    //       ],
    //     ),
    //   ),
    // );
//   }
// }
