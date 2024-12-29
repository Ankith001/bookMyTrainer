import 'package:bookmytrainer/application/auth_bloc/auth_bloc.dart';
import 'package:bookmytrainer/core/extensions.dart';
import 'package:bookmytrainer/core/validators.dart';
import 'package:bookmytrainer/domain/auth/models/user_model.dart';
import 'package:bookmytrainer/presentation/common/primary_button.dart';
import 'package:bookmytrainer/presentation/common/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const route = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(const AuthEvent.init()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Sign Up'),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isSuccess) {
              context.go('/homescreen');
            }
            if (state.isFailed) {
              context.message(state.showMessage);
            }
            context.read<AuthBloc>().add(AuthEvent.emitFromAnywhere(
                    state: state.copyWith(
                  isFailed: false,
                  showMessage: '',
                  isSuccess: false,
                )));
          },
          builder: (context, state) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        PrimaryTextField(
                          controller: _emailController,
                          validator: (val) => Validators.validateEmail(val),
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 16.0),
                        PrimaryTextField(
                          controller: _passwordController,
                          validator: (val) => Validators.required(val),
                          labelText: 'Password',
                          filled: true,
                        ),
                        const SizedBox(height: 14.0),
                        PrimaryTextField(
                          labelText: 'Re-enter Password',
                          filled: true,
                        ),
                        const SizedBox(height: 14.0 + 48.0),
                        // const Spacer(),
                        PrimaryButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.createUserWithEmailAndPassword(
                                    user: UserModel(
                                        id: "",
                                        name: "",
                                        email: _emailController.text,
                                        mobile: ""),
                                    password: _passwordController.text,
                                  ));
                            }
                          },
                          child: const Text('Sign Up'),
                        ),
                      ],
                    ),
                  ),
                ),
                state.isLoading
                    ? Positioned.fill(
                        child: Container(
                          color: Colors.black
                              .withOpacity(0.5), // Adjust the opacity as needed
                          child: Center(
                            child: Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.scheme.background),
                                child: Transform.scale(
                                    scale: 0.5,
                                    child: const CircularProgressIndicator())),
                          ),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            );
          },
        ),
      ),
    );
  }
}
