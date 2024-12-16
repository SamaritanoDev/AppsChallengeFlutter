import 'dart:convert';
import 'package:finance_app_bubbles/src/features/home/domain/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class ListCards extends StatelessWidget {
  const ListCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MyCard();
  }

  Future<List<MyCard>> _loadCards(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context); // Get context first
    final String jsonString =
        await assetBundle.loadString('lib/src/data/list_cards.json');
    final List<dynamic> jsonDecoded = jsonDecode(jsonString) as List<dynamic>;

    return jsonDecoded
        .map((dynamic json) => MyCard.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}

class _MyCard extends StatelessWidget {
  const _MyCard();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MyCard>>(
      future: const ListCards()._loadCards(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          final List<MyCard> cards = snapshot.data!;

          return Flexible(
            child: CardSwiper(
              scale: 0.8,
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) {
                final card = cards[index];
                return _ItemCard(card: card);
              },
              cardsCount: cards.length,
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        // Display a loading indicator while data is being fetched
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class _ItemCard extends StatelessWidget {
  final MyCard card;
  const _ItemCard({
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    final logoStyle = textTheme.titleLarge?.copyWith(
      color: color.onPrimary,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );

    final totalBalanceStyle = textTheme.bodySmall?.copyWith(
      fontSize: 11,
      fontWeight: FontWeight.w600,
      color: color.onPrimary,
    );

    final rsStyle = textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.w600,
      color: color.onPrimary,
      fontSize: 16,
    );

    final maskStyle = textTheme.bodySmall?.copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: color.onPrimary,
    );

    final lastFourDigits = card.numberCard
        .toString()
        .substring(card.numberCard.toString().length - 4);

    return AspectRatio(
      aspectRatio: 2.23,
      child: Container(
        width: 347,
        height: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          color: Color(int.parse(card.colorName)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(card.entityName, style: logoStyle),
              const Spacer(),
              Text('Total Balance', style: totalBalanceStyle),
              Row(
                children: [
                  Text('Rs ${card.rs.toString()}', style: rsStyle),
                  const Spacer(),
                  Text('******* $lastFourDigits', style: maskStyle),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
