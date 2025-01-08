import 'package:bookmytrainer/application/auth_bloc/auth_bloc.dart';
import 'package:bookmytrainer/core/extensions.dart';
import 'package:bookmytrainer/core/validators.dart';
import 'package:bookmytrainer/domain/auth/models/user_model.dart';
import 'package:bookmytrainer/presentation/auth/sign_up_screen.dart';
import 'package:bookmytrainer/presentation/common/primary_button.dart';
import 'package:bookmytrainer/presentation/common/primary_circular_progress_indicator.dart';
import 'package:bookmytrainer/presentation/common/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const route = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          title: const Text('Welcome Back'),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isSuccess) {
              context.go('/homescreen');
            }
            if (state.isFailed) {
              context.error(state.showMessage);
            }
            context.read<AuthBloc>().add(AuthEvent.emitFromAnywhere(
                    state: state.copyWith(
                  isFailed: false,
                  showMessage: '',
                  isSuccess: false,
                )));
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          PrimaryTextField(
                            validator: (value) =>
                                Validators.validateEmail(value),
                            controller: _emailController,
                            labelText: 'Email',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 14.0),
                          PrimaryTextField(
                            validator: (value) => Validators.required(value),
                            controller: _passwordController,
                            labelText: 'Password',
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          // const Spacer(),
                          PrimaryButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context
                                    .read<AuthBloc>()
                                    .add(AuthEvent.loginWithEmailAndPassword(
                                      user: UserModel(
                                          id: "",
                                          name: "",
                                          email: _emailController.text,
                                          mobile: ""),
                                      password: _passwordController.text,
                                    ));
                              }
                            },
                            child: const Text('Login'),
                          ),
                          IconButton(
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.googleSignIn());
                            },
                            icon: const Icon(Icons.email_outlined),
                          ),
                          const Spacer(),
                          SafeArea(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpScreen(),
                                        ));
                                  },
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const SizedBox(
                          //   height: 30,
                          // )
                        ],
                      ),
                    ),
                  ),
                  state.isLoading
                      ? const Positioned.fill(
                          child: PrimaryCircularProgressIndicator(),
                        )
                      : const SizedBox.shrink()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
