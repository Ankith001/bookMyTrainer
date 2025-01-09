import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/trainer_bloc/trainer_bloc.dart';
import '../../core/extensions.dart';

class TrainerDetailScreen extends StatelessWidget {
  final String trainerId;

  const TrainerDetailScreen({
    Key? key,
    required this.trainerId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TrainerBloc()..add(TrainerEvent.getTrainerById(trainerId)),
      child: BlocConsumer<TrainerBloc, TrainerState>(
        listener: (context, state) {
          if (state.showMessage.isNotEmpty) {
            context.message(state.showMessage);
            context.read<TrainerBloc>().add(const TrainerEvent.init());
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Trainer Details'),
            ),
            body: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.selectedTrainer == null
                    ? const Center(child: Text('Trainer not found'))
                    : SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    state.selectedTrainer!.imageUrl.isNotEmpty
                                        ? NetworkImage(
                                            state.selectedTrainer!.imageUrl)
                                        : null,
                                child: state.selectedTrainer!.imageUrl.isEmpty
                                    ? Text(
                                        state.selectedTrainer!.name[0]
                                            .toUpperCase(),
                                        style: const TextStyle(fontSize: 48),
                                      )
                                    : null,
                              ),
                            ),
                            const SizedBox(height: 24),
                            _buildInfoCard(
                              title: 'Name',
                              content: state.selectedTrainer!.name,
                              icon: Icons.person,
                            ),
                            _buildInfoCard(
                              title: 'Specialization',
                              content: state.selectedTrainer!.specialization,
                              icon: Icons.fitness_center,
                            ),
                            _buildInfoCard(
                              title: 'Experience',
                              content: state.selectedTrainer!.experience,
                              icon: Icons.work,
                            ),
                            _buildInfoCard(
                              title: 'Phone',
                              content: state.selectedTrainer!.phoneNumber,
                              icon: Icons.phone,
                            ),
                            _buildInfoCard(
                              title: 'Email',
                              content: state.selectedTrainer!.email,
                              icon: Icons.email,
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: Chip(
                                label: Text(
                                  state.selectedTrainer!.isAvailable
                                      ? 'Available'
                                      : 'Unavailable',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                backgroundColor:
                                    state.selectedTrainer!.isAvailable
                                        ? Colors.green
                                        : Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
          );
        },
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String content,
    required IconData icon,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          content,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
