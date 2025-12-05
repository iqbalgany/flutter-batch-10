import 'package:flutter/material.dart';

class FootballPlayerWidget extends StatelessWidget {
  final String name;
  final String country;
  final String? imageUrl;
  final bool isFavorite;
  final Function()? ontap;
  const FootballPlayerWidget({
    super.key,
    required this.name,
    required this.country,
    this.imageUrl,
    this.isFavorite = false,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap?.call,
      child: Card(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(18.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              CircleAvatar(
                foregroundImage: imageUrl != null
                    ? NetworkImage(imageUrl!)
                    : null,
                child: Icon(Icons.person),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.isNotEmpty ? name : '?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Text(country, style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Spacer(),
              if (isFavorite) Icon(Icons.star, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
