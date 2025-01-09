import 'package:flutter/material.dart';
import '../../domain/trainer/trainer.dart';
import '../../infrastructure/trainer_repository.dart';

class TrainerFormScreen extends StatefulWidget {
  const TrainerFormScreen({Key? key}) : super(key: key);

  @override
  _TrainerFormScreenState createState() => _TrainerFormScreenState();
}

class _TrainerFormScreenState extends State<TrainerFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _trainerRepository = TrainerRepository();

  String name = '';
  String specialization = '';
  String experience = '';
  String phoneNumber = '';
  String email = '';
  String imageUrl = '';

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final trainer = Trainer(
        id: '', // Will be set by Firestore
        name: name,
        specialization: specialization,
        experience: experience,
        phoneNumber: phoneNumber,
        email: email,
        imageUrl: imageUrl,
      );

      try {
        await _trainerRepository.createTrainer(trainer);
        Navigator.pop(context);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error creating trainer: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Trainer'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter name' : null,
                onSaved: (value) => name = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Specialization'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter specialization' : null,
                onSaved: (value) => specialization = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Experience'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter experience' : null,
                onSaved: (value) => experience = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter phone number' : null,
                onSaved: (value) => phoneNumber = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Please enter email' : null,
                onSaved: (value) => email = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Image URL'),
                onSaved: (value) => imageUrl = value ?? '',
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Create Trainer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
