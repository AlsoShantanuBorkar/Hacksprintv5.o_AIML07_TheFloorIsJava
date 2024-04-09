import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

extension AppDateExt on DateTime {
  /// copyWith extension for `DateTime`
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }

  String formatDate() {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}

extension FunctionalX<A> on Option<A> {
  A expect({String? message}) => getOrElse(
        () => throw Exception(message ?? "type $A should exist or crash sys"),
      );
}
