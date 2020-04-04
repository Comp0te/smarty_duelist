import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart' show IAuthRepository;
import 'bloc.dart';

@injectable
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  final IAuthRepository _authRepository;

  final tabController = PlatformTabController();

  SignOutBloc({@required IAuthRepository authRepository})
      : assert(authRepository != null),
        _authRepository = authRepository;

  @override
  SignOutState get initialState => const Init();

  @override
  Stream<SignOutState> mapEventToState(SignOutEvent event) async* {
    yield const Loading();

    await _authRepository.signOut();

    yield const Success();
  }

  @override
  Future<void> close() {
    tabController.dispose();
    return super.close();
  }

}
