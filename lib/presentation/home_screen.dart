import 'package:bookmytrainer/application/auth_bloc/auth_bloc.dart';
import 'package:bookmytrainer/application/trainer_bloc/trainer_bloc.dart';
import 'package:bookmytrainer/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TrainerBloc()..add(const TrainerEvent.getAllTrainers()),
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
              title: const Text('Book My Trainer'),
              actions: [
                IconButton(
                  onPressed: () {
                    try {
                      context.read<AuthBloc>().add(const AuthEvent.logout());
                      context.go('/');
                    } catch (e) {
                      debugPrint(e.toString());
                      context.message(e.toString());
                    }
                  },
                  icon: const Icon(Icons.logout),
                ),
              ],
            ),
            body: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.trainers.isEmpty
                    ? const Center(child: Text('No trainers found'))
                    : RefreshIndicator(
                        onRefresh: () async {
                          context
                              .read<TrainerBloc>()
                              .add(const TrainerEvent.getAllTrainers());
                        },
                        child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: state.trainers.length,
                          itemBuilder: (context, index) {
                            final trainer = state.trainers[index];
                            return Card(
                              elevation: 2,
                              margin: const EdgeInsets.only(bottom: 16),
                              child: InkWell(
                                onTap: () {
                                  context.push('/trainers/${trainer.id}');
                                },
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(16),
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: trainer.imageUrl.isNotEmpty
                                        ? NetworkImage(trainer.imageUrl)
                                        : null,
                                    child: trainer.imageUrl.isEmpty
                                        ? Text(trainer.name[0].toUpperCase(),
                                            style:
                                                const TextStyle(fontSize: 24))
                                        : null,
                                  ),
                                  title: Text(
                                    trainer.name,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 8),
                                      Text(trainer.specialization),
                                      Text('Experience: ${trainer.experience}'),
                                    ],
                                  ),
                                  trailing: trainer.isAvailable
                                      ? const Chip(
                                          label: Text('Available'),
                                          backgroundColor: Colors.green,
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                        )
                                      : const Chip(
                                          label: Text('Unavailable'),
                                          backgroundColor: Colors.red,
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                        ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => context.push('/trainers/new'),
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
