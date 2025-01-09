part of 'trainer_bloc.dart';

@freezed
class TrainerState with _$TrainerState {
  const factory TrainerState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required String showMessage,
    required ITrainerRepository trainerRepo,
    required List<Trainer> trainers,
    Trainer? selectedTrainer,
  }) = _TrainerState;

  factory TrainerState.initial() => TrainerState(
        isLoading: false,
        isFailed: false,
        isSuccess: false,
        noUse: false,
        showMessage: '',
        trainerRepo: TrainerRepository(),
        trainers: [],
        selectedTrainer: null,
      );
}
