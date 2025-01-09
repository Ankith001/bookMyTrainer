import 'package:cloud_firestore/cloud_firestore.dart';

class Trainer {
  final String id;
  final String name;
  final String specialization;
  final String experience;
  final String phoneNumber;
  final String email;
  final String imageUrl;
  final bool isAvailable;

  Trainer({
    required this.id,
    required this.name,
    required this.specialization,
    required this.experience,
    required this.phoneNumber,
    required this.email,
    required this.imageUrl,
    this.isAvailable = true,
  });

  factory Trainer.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Trainer(
      id: doc.id,
      name: data['name'] ?? '',
      specialization: data['specialization'] ?? '',
      experience: data['experience'] ?? '',
      phoneNumber: data['phoneNumber'] ?? '',
      email: data['email'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      isAvailable: data['isAvailable'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'specialization': specialization,
      'experience': experience,
      'phoneNumber': phoneNumber,
      'email': email,
      'imageUrl': imageUrl,
      'isAvailable': isAvailable,
    };
  }

  Trainer copyWith({
    String? id,
    String? name,
    String? specialization,
    String? experience,
    String? phoneNumber,
    String? email,
    String? imageUrl,
    bool? isAvailable,
  }) {
    return Trainer(
      id: id ?? this.id,
      name: name ?? this.name,
      specialization: specialization ?? this.specialization,
      experience: experience ?? this.experience,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
}
