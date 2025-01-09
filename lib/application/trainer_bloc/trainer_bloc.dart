import 'package:bookmytrainer/domain/trainer/i_trainer_repository.dart';
import 'package:bookmytrainer/domain/trainer/trainer.dart';
import 'package:bookmytrainer/infrastructure/trainer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_event.dart';
part 'trainer_state.dart';
part 'trainer_bloc.freezed.dart';

class TrainerBloc extends Bloc<TrainerEvent, TrainerState> {
  TrainerBloc() : super(TrainerState.initial()) {
    // init
    on<_Init>((event, emit) {
      // init event
    });

    // Get all trainers
    on<_GetAllTrainers>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final trainers = await state.trainerRepo.getAllTrainers();
      emit(state.copyWith(
        isLoading: false,
        trainers: trainers,
      ));
    });

    // Create trainer
    on<_CreateTrainer>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.trainerRepo.createTrainer(event.trainer);
      if (res) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          showMessage: 'Trainer Created Successfully!',
        ));
        add(const TrainerEvent.getAllTrainers());
      } else {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          showMessage: 'Failed to Create Trainer!',
        ));
      }
    });

    // Update trainer
    on<_UpdateTrainer>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.trainerRepo.updateTrainer(event.trainer);
      if (res) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          showMessage: 'Trainer Updated Successfully!',
        ));
        add(const TrainerEvent.getAllTrainers());
      } else {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          showMessage: 'Failed to Update Trainer!',
        ));
      }
    });

    // Delete trainer
    on<_DeleteTrainer>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.trainerRepo.deleteTrainer(event.id);
      if (res) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          showMessage: 'Trainer Deleted Successfully!',
        ));
        add(const TrainerEvent.getAllTrainers());
      } else {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          showMessage: 'Failed to Delete Trainer!',
        ));
      }
    });

    // Get trainer by id
    on<_GetTrainerById>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final trainer = await state.trainerRepo.getTrainerById(event.id);
      if (trainer != null) {
        emit(state.copyWith(
          isLoading: false,
          selectedTrainer: trainer,
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          showMessage: 'Trainer not found!',
        ));
      }
    });

    // emit from anywhere
    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
  }
}
