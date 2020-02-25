import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class Failure extends Equatable {
  final String message;
  const Failure([this.message]);

  @override
  List<Object> get props => [message];
}

class UnknownFailure extends Failure {
  const UnknownFailure([String message]) : super(message);
}
