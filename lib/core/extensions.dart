import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dateLabel => DateFormat("dd-MM-yyyy").format(this);
  String get dateTimeLabel => DateFormat("dd MMM yyyy hh:mm a").format(this);
  String get time => DateFormat("HH:mm").format(this);

  String get date => DateFormat("yyyy-MM-dd").format(this);

  String get dayDate => DateFormat("EEE, dd MMM, yyyy").format(this);

  String get dayDateTime =>
      DateFormat("EEE, dd MMM, yyyy hh:mm a").format(this);

  String get dayDate1 => DateFormat("dd MMM, yyyy").format(this);

  String get dateMonth => DateFormat("dd\nMMM").format(this);
  String get dayLabel => DateFormat("EEEE").format(this);
}

extension BuildContextExtension on BuildContext {
  Size get size_ => MediaQuery.sizeOf(this);

  EdgeInsets get padding => MediaQuery.of(this).padding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  ThemeData get theme => Theme.of(this);
  ColorScheme get scheme => theme.colorScheme;
  TextTheme get style => theme.textTheme;

  // AppLocalizations get labels => AppLocalizations.of(this)!;

  // Future<dynamic> push(String name, {Object? extra}) {
  //   return Navigator.pushNamed(this, name, arguments: extra);
  // }

  // void pop([Object? result]) {
  //   return Navigator.pop(this, result);
  // }

  // Future<dynamic> replace(String name, {Object? extra}) {
  //   return Navigator.pushReplacementNamed(this, name, arguments: extra);
  // }

  // Future<dynamic> goTo(String name, {Object? extra}) {
  //   return Navigator.pushNamedAndRemoveUntil(
  //     this,
  //     name,
  //     (route) => route.isFirst,
  //     arguments: extra,
  //   );
  // }

  // void go() {
  //   Navigator.pushNamedAndRemoveUntil(
  //     this,
  //     Root.route,
  //     (route) => false,
  //   );
  // }

  // bool get canPop => Navigator.canPop(this);

  void message(dynamic value) {
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            '$value',
          ),
        ),
      );
  }

  void error(dynamic e) {
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: scheme.onErrorContainer,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '$e',
            style: TextStyle(color: scheme.errorContainer),
          ),
        ),
      );
  }
}
