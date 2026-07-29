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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/Icon.png'),
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
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Image.asset('assets/images/Imagem.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categorias',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Ver todas',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff148C4D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        ContainerCategoria(
                          urlImg: 'assets/images/Folha.png',
                          bagGrond: Color(0xffDEF5D6),
                          texto: 'Hortifruti',
                        ),
                        ContainerCategoria(
                          urlImg: 'assets/images/Asset.png',
                          bagGrond: Color(0xffDBF0FF),
                          texto: 'Laticínios',
                        ),
                        ContainerCategoria(
                          urlImg: 'assets/images/Asset-2.png',
                          bagGrond: Color(0xffFFE0DB),
                          texto: 'Carnes',
                        ),
                        ContainerCategoria(
                          urlImg: 'assets/images/Asset-3.png',
                          bagGrond: Color(0xffFFEDC7),
                          texto: 'Padaria',
                        ),
                        ContainerCategoria(
                          urlImg: 'assets/images/Asset-4.png',
                          bagGrond: Color(0xffE5E0FF),
                          texto: 'Limpeza',
                        ),
                        ContainerCategoria(
                          urlImg: 'assets/images/Asset-5.png',
                          bagGrond: Color(0xffFFE5F0),
                          texto: 'Bebidas',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerCategoria extends StatelessWidget {
  const ContainerCategoria({
    super.key,
    required this.urlImg,
    required this.bagGrond,
    required this.texto,
  });

  final String urlImg;
  final Color bagGrond;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bagGrond,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(urlImg, fit: BoxFit.contain),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                texto,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
