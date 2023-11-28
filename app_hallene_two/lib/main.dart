import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:app_hallene_two/data/data.dart';
import 'package:app_hallene_two/widgets/lata_completa.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
            child: CardSwiper(
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) {
                final miLataCompleta = lataCompletaList[index];
                return MiLataCompleta(
                  colorPrimary: miLataCompleta.colorPrimary,
                  colorLigth: miLataCompleta.colorLigth,
                  urlSvg: miLataCompleta.urlSvg,
                  colorSvg: miLataCompleta.colorSvg,
                );
              },
              cardsCount: lataCompletaList.length,
            ),
          ),
        ),
      ],
    );
  }
}
