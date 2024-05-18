import 'package:app_hallene_two/config/colors.dart';
import 'package:app_hallene_two/config/constants.dart';
import 'package:app_hallene_two/widgets/lata_completa.dart';
import 'package:flutter/material.dart';

final List<MiLataCompleta> lataCompletaList = [
  MiLataCompleta(
    colorPrimary: greenPrimary,
    colorLigth: greenClaro!,
    urlSvg: urlOne,
  ),
  MiLataCompleta(
    colorPrimary: redPrimary,
    colorLigth: redClaro!,
    urlSvg: urlTwo,
    colorSvg: Colors.white,
  ),
  const MiLataCompleta(
    colorPrimary: blackPrimary,
    colorLigth: blackClaro,
    urlSvg: urlThree,
  ),
];
