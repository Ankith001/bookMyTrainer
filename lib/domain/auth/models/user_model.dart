import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String? fcmToken;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    this.fcmToken,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? mobile,
    String? fcmToken,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'email': email});
    result.addAll({'mobile': mobile});
    if (fcmToken != null) {
      result.addAll({'fcmToken': fcmToken});
    }

    return result;
  }

  factory UserModel.fromDoc(DocumentSnapshot doc) {
    final map = doc.data() as Map<String, dynamic>;
    return UserModel(
      id: doc.id,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      mobile: map['mobile'] ?? '',
      fcmToken: map['fcmToken'],
    );
  }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, mobile: $mobile, fcmToken: $fcmToken)';
  }
}
