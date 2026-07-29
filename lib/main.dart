import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ENTREGAR EM',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff148C4D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rua das Flores, 128',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actionsPadding: const EdgeInsets.only(right: 16),
          actions: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xffD6F0DE),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff0B4729),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 15,
                          children: [
                            Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xffC2ED47),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  'OFERTA DO DIA',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff0B4729),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Hortifruti com até \n30% OFF',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                            const Row(
                              spacing: 3,
                              children: [
                                Text(
                                  'Ver ofertas',
                                  style: TextStyle(
                                    color: Color(0xffc2ed47),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 16,
                                  color: Color(0xffc2ed47),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2BF2E),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
