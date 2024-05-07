import 'package:flutter/material.dart';

enum ProgramType { cardio, lift, strength, bodyweight }

class FitnessProgram {
  final AssetImage image;
  final String name;
  final String cals;
  final String time;
  final ProgramType type;

  FitnessProgram({
    required this.image,
    required this.name,
    required this.cals,
    required this.time,
    required this.type,
  });
}

final List<FitnessProgram> fitnessPrograms = [
  FitnessProgram(
    image: const AssetImage('assets/running.jpg'),
    name: 'Cardio',
    cals: '220kkal',
    time: '20min',
    type: ProgramType.cardio,
  ),
  FitnessProgram(
    image: const AssetImage('assets/weights.jpg'),
    name: 'Barbel Lift',
    cals: '220kkal',
    time: '20min',
    type: ProgramType.lift,
  ),
  FitnessProgram(
    image: const AssetImage('assets/running.jpg'),
    name: 'Strength Training',
    cals: '220kkal',
    time: '20min',
    type: ProgramType.strength,
  ),
  FitnessProgram(
    image: const AssetImage('assets/running.jpg'),
    name: 'Bodyweight Exercise',
    cals: '220kkal',
    time: '20min',
    type: ProgramType.bodyweight,
  ),
];
