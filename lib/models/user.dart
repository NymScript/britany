import 'package:britany/models/equipment.dart';

class User {
  final String name;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String bloodType;
  final String documentNumber;
  final String acronym;          
  final String studySheet;    
  final String program;   
  final String journal;
  final String trainingCenter;   
  final List<Equipment> equipments;

  User({
    required this.name,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.bloodType,
    required this.documentNumber,
    required this.acronym,
    required this.studySheet,
    required this.program,
    required this.journal,
    required this.trainingCenter,
    required this.equipments,
  });
}
