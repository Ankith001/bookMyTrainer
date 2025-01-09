part of 'trainer_bloc.dart';

@freezed
class TrainerEvent with _$TrainerEvent {
  const factory TrainerEvent.init() = _Init;
  const factory TrainerEvent.getAllTrainers() = _GetAllTrainers;
  const factory TrainerEvent.createTrainer(Trainer trainer) = _CreateTrainer;
  const factory TrainerEvent.updateTrainer(Trainer trainer) = _UpdateTrainer;
  const factory TrainerEvent.deleteTrainer(String id) = _DeleteTrainer;
  const factory TrainerEvent.getTrainerById(String id) = _GetTrainerById;
  const factory TrainerEvent.emitFromAnywhere(TrainerState state) = _EmitFromAnywhere;
}
