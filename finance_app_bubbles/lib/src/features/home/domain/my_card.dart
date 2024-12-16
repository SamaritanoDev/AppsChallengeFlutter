class MyCard {
  final String entityName; /* Visa, Mastercard*/
  final int numberCard;
  final double rs;
  final String colorName;

  MyCard({
    required this.entityName,
    required this.numberCard,
    required this.rs,
    required this.colorName,
  });

  factory MyCard.fromJson(Map<String, dynamic> json) => MyCard(
        entityName: json["entityName"],
        numberCard: json["numberCard"],
        rs: json["rs"],
        colorName: json["colorName"],
      );

  Map<String, dynamic> toJson() => {
        "entityName": entityName,
        "numberCard": numberCard,
        "rs": rs,
        "colorName": colorName,
      };
}
