import 'package:flutter/material.dart';

class RocketCard extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final String id;
  final String country;
  final String name;
  final int engineCount;

  const RocketCard({
    Key? key,
    required this.onTap,
    required this.image,
    required this.country,
    required this.name,
    required this.engineCount,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              height: 151.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xff040404),
                  ],
                  stops: [
                    0.0,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 212.0,
            child: Text(
              country,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Positioned(
            left: 20.0,
            top: 228.0,
            child: Text(
              name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Positioned(
            left: 20.0,
            top: 270.0,
            child: Text(
              '$engineCount Engine',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
