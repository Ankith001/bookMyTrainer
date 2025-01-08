import 'package:bookmytrainer/application/auth_bloc/auth_bloc.dart';
import 'package:bookmytrainer/core/defaults.dart';
import 'package:bookmytrainer/core/extensions.dart';
import 'package:bookmytrainer/core/utils/shared_pref_helper.dart';
import 'package:bookmytrainer/firebase_options.dart';
import 'package:bookmytrainer/routes.dart';
import 'package:bookmytrainer/theme/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await SharedPreferencesHelper().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'bookMyTrainer',
        theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.outfit().fontFamily,
          colorScheme: customColorScheme,
          appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            titleTextStyle: context.style.titleMedium?.copyWith(
              fontFamily: GoogleFonts.outfit().fontFamily,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.titleLight,
              minimumSize: const Size(100, 56),
              padding: const EdgeInsets.symmetric(
                horizontal: AppDefaults.padding,
                vertical: AppDefaults.padding,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppDefaults.borderRadius,
                ),
              ),
              side: const BorderSide(
                color: AppColors.highlightLight,
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final customColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF1537E2), // Deep Purple
).copyWith(
  primary: const Color(0xFF1537E2), // Deep Purple
  onPrimary: Colors.white, // White text on primary
  primaryContainer:
      const Color(0xFFBB86FC), // Light Purple for primary container
  onPrimaryContainer:
      const Color(0xFF3700B3), // Dark Purple text on primary container

  secondary: const Color(0xFF03DAC6), // Light Teal
  onSecondary: Colors.black, // Black text on secondary
  secondaryContainer:
      const Color(0xFF018786), // Darker Teal for secondary container
  onSecondaryContainer: Colors.white, // Black text on background

  surface: const Color(0xFFFFFFFF), // White surface
  onSurface: const Color(0xFF000000), // Black text on surface

  error: Colors.red, // Red error color
  onError: Colors.white, // White text on error

  outline: Colors.grey[500], // Grey outline
  outlineVariant: Colors.grey[300], // Light grey outline variant

  surfaceContainerHighest:
      const Color(0xFFF5F5F5), // Very light grey surface variant
  onSurfaceVariant: Colors.black, // Black text on surface variant

  shadow: Colors.black.withOpacity(0.2), // Light black shadow

  tertiary: const Color(0xFFBB86FC), // Light Purple for tertiary elements
  onTertiary: Colors.white, // White text on tertiary
  tertiaryContainer:
      const Color(0xFFEDE7F6), // Very light purple for tertiary container
  onTertiaryContainer: Colors.black, // Black text on tertiary container
);
