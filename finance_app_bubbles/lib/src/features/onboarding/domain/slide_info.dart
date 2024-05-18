import 'package:finance_app_bubbles/src/constants/contants.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title,
    this.caption,
    this.imageUrl,
  );
}

final slides = <SlideInfo>[
  SlideInfo('Digital Transactions',
      'Carrying Out Financial Transactions With The Best Security', slideOne),
  SlideInfo('Cash Savings',
      'Carrying Out Financial Transactions With The Best Security', slideTwo),
  SlideInfo('Money Management',
      'Carrying Out Financial Transactions With The Best Security', slideThree),
];
