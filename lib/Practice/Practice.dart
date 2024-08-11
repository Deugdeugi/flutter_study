import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.blue,
        //         letterSpacing: 3,
        //       ),
        //       "Hello World!",
        //     ),
        //     Text(
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.red,
        //         letterSpacing: 3,
        //       ),
        //       "Hello World!",
        //     ),
        //     Text(
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.yellow,
        //         letterSpacing: 3,
        //       ),
        //       "Hello World!",
        //     ),
        //   ],
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(size: 30, color: Colors.orange, Icons.search),
            // Image.asset(
            //   '../assets/sky.jpg',
            //   width: 200,
            //   height: 200,
            // ),
            // Image.network(
            //   'https://picsum.photos/200/200',
            // ),
            const Image(
              image: AssetImage('../assets/sky.jpg'),
              width: 200,
              height: 200,
            ),
            const Image(
              image: NetworkImage(
                'https://picsum.photos/200/200',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 200,
              height: 100,
              child: Text(
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 3,
                ),
                "Hello World!",
              ),
            ),
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.red,
                        Colors.yellow,
                      ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                print('테스트 버튼 이벤트');
              },
              child: const Text('테스트 버튼'),
            ),
          ],
        ),
      ),
    );
  }
}
