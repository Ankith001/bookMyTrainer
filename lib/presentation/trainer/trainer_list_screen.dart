import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/trainer/trainer.dart';
import '../../infrastructure/trainer_repository.dart';
import 'trainer_form_screen.dart';

class TrainerListScreen extends StatelessWidget {
  final TrainerRepository _trainerRepository = TrainerRepository();

  TrainerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainers'),
      ),
      body: StreamBuilder<List<Trainer>>(
        stream: _trainerRepository.getAllTrainers().asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final trainers = snapshot.data ?? [];

          return ListView.builder(
            itemCount: trainers.length,
            itemBuilder: (context, index) {
              final trainer = trainers[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: trainer.imageUrl.isNotEmpty
                        ? NetworkImage(trainer.imageUrl)
                        : null,
                    child: trainer.imageUrl.isEmpty
                        ? Text(trainer.name[0].toUpperCase())
                        : null,
                  ),
                  title: Text(trainer.name),
                  subtitle: Text(trainer.specialization),
                  trailing: trainer.isAvailable
                      ? const Chip(
                          label: Text('Available'),
                          backgroundColor: Colors.green,
                          labelStyle: TextStyle(color: Colors.white),
                        )
                      : const Chip(
                          label: Text('Unavailable'),
                          backgroundColor: Colors.red,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TrainerFormScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
