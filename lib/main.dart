import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:raccoon_path/level.dart';
import 'package:raccoon_path/level_model.dart';

import 'gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

final levels = [
  LevelModel(
    maxPoints: 5000,
    name: "Talaba",
    logo: Assets.images.talaba.path,
  ),
  LevelModel(
    maxPoints: 10000,
    name: "Izlanuvchi",
    logo: Assets.images.izlanuvchi.path,
  ),
  LevelModel(
    maxPoints: 15000,
    name: "Bilimdon",
    logo: Assets.images.bilimdon.path,
  ),
  LevelModel(
    maxPoints: 20000,
    name: "Samarador",
    logo: Assets.images.samarador.path,
  ),
  LevelModel(
    maxPoints: 25000,
    name: "Olim",
    logo: Assets.images.olim.path,
  ),
  LevelModel(
    maxPoints: 30000,
    name: "Mutaffakkir",
    logo: Assets.images.mutaffakkir.path,
  ),
];

class HomePage extends StatelessWidget {
  HomePage({super.key});

  num value = 1;

  final index = 0;

  final num changing = 45;
  final double points = 6.73246786432168;

  num degreeToRadian(num degree) {
    return degree * (pi / 180);
  }

  final controller = ScrollController();

  final degrees = {
    0: 0,
    1: -0.2,
    2: 0.1,
    3: 0.2,
    4: 0,
    5: 0.7,
    6: 0.7,
    7: 0.7,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: levels.length * 4,
          itemBuilder: (context, index) {
            if (index % 4 != 0 && index != 0) {
              final angle = degrees[(index % 10)] ?? 0;
              print("Angle: $angle");
              return Align(
                  alignment:
                      Alignment(sin(-degreeToRadian(index * 35)) * 0.4, 0),
                  child: Transform.rotate(
                      angle: -angle.toDouble(),
                      child: SvgPicture.asset(points.toInt() > index
                          ? Assets.icons.activeShoe
                          : Assets.icons.inactiveShoe)));
            }
            final level = levels[index ~/ 4];
            return Align(
              alignment: Alignment(sin(-degreeToRadian(index * 35)) * 0.9, 0),
              child: Level(
                icon: level.logo,
                enabled: points > index,
                maxPoint: level.maxPoints,
                currentPoint: points * 5000 ~/ 3,
                name: level.name,
              ),
            );
          },
        ),
      ),
    );
  }
}
/// grad * 13 = 180/pi