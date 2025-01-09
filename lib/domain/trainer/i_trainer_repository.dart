
import 'trainer.dart';

abstract class ITrainerRepository {
  Future<List<Trainer>> getAllTrainers();
  Future<bool> createTrainer(Trainer trainer);
  Future<bool> updateTrainer(Trainer trainer);
  Future<bool> deleteTrainer(String id);
  Future<Trainer?> getTrainerById(String id);
}
