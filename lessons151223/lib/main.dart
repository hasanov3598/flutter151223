import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   actions: const [
        //     Text("Settings"),
        //     Icon(
        //      Icons.settings,
        //     )
        //   ],
        //   centerTitle: true,
        //   title: const Text("Settings Page"),
        //   leading: const Icon(
        //   Icons.arrow_back_ios,
        //     size: 30,
        //     color: Colors.white,
        //   ),
        //   backgroundColor: const Color.fromARGB(255, 99, 12, 6),
        // ),
        body: Row(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.calculate,
                      ),
                      MyLittleContainer(
                        text: "Current Weigth           --- kgs",
                        isSelected: true,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calculate,
                      ),
                      MyLittleContainer(
                        text: "Target Weigh              --- kgs",
                        isSelected: true,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.rule,
                      ),
                      MyLittleContainer(
                        text: "Height                        --- cms",
                        isSelected: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Mycontainer extends StatelessWidget {
//   const Mycontainer({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 250,
//       height: 250,
//       decoration: BoxDecoration(
//         color: Colors.pink,
//         borderRadius: const BorderRadius.all(
//           Radius.circular(
//             25,
//           ),
//         ),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.purple,
//             spreadRadius: 10,
//             blurRadius: 18,
//             offset: Offset(-10, 10),
//           ),
//         ],
//         shape: BoxShape.rectangle,
//         border: Border.all(
//           width: 10,
//           color: Colors.green,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(
//           12,
//         ),
//         child: Container(
//           color: Colors.black,
//         ),
//       ),
//     );
//   }
// }

class MyLittleContainer extends StatelessWidget {
  const MyLittleContainer({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
