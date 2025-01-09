import 'package:cloud_firestore/cloud_firestore.dart';
import '../domain/trainer/i_trainer_repository.dart';
import '../domain/trainer/trainer.dart';

class TrainerRepository implements ITrainerRepository {
  final FirebaseFirestore _firestore;

  TrainerRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<List<Trainer>> getAllTrainers() async {
    try {
      final querySnapshot = await _firestore.collection('trainers').get();
      return querySnapshot.docs
          .map((doc) => Trainer.fromFirestore(doc))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> createTrainer(Trainer trainer) async {
    try {
      await _firestore.collection('trainers').add(trainer.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updateTrainer(Trainer trainer) async {
    try {
      await _firestore
          .collection('trainers')
          .doc(trainer.id)
          .update(trainer.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deleteTrainer(String id) async {
    try {
      await _firestore.collection('trainers').doc(id).delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Trainer?> getTrainerById(String id) async {
    try {
      final doc = await _firestore.collection('trainers').doc(id).get();
      if (doc.exists) {
        return Trainer.fromFirestore(doc);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
