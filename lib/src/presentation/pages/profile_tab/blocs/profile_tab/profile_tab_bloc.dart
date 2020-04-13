import 'dart:async';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart' show IAuthRepository;

import '../../../../core_blocs/core_blocs.dart'
    show ClearSelected, ImagePickerBloc;
import '../../../../routes/routes.dart' show ImageEditorModalArguments, Routes;
import 'bloc.dart';

@injectable
class ProfileTabBloc extends Bloc<ProfileTabEvent, ProfileTabState> {
  final IAuthRepository _authRepository;
  final ImagePickerBloc imagePickerBloc;
  final nameController = TextEditingController();

  StreamSubscription imagePickerSubscription;

  ProfileTabBloc({
    @required IAuthRepository authRepository,
    @required this.imagePickerBloc,
  })  : assert(authRepository != null),
        _authRepository = authRepository;

  @override
  ProfileTabState get initialState {
    imagePickerSubscription = _getImagePickerSubscription();
    debugPrint(_authRepository.toString());
    return const ProfileTabState();
  }

  @override
  Stream<ProfileTabState> mapEventToState(ProfileTabEvent event) async* {
    yield* event.map(
      avatarSelected: (event) async* {
        yield state.copyWith.call(avatar: event.avatar);
      },
      submit: (event) async* {},
    );
  }

  StreamSubscription _getImagePickerSubscription() {
    return imagePickerBloc.listen((pickerState) {
      pickerState.maybeWhen(
        imageSelected: (imageData) async {
          final editedImage =
              await ExtendedNavigator.rootNavigator.pushNamed<Uint8List>(
            Routes.imageEditorModal,
            arguments: ImageEditorModalArguments(
              imagePickerBloc: imagePickerBloc,
            ),
          );

          add(AvatarSelected(editedImage));
          imagePickerBloc.add(const ClearSelected());
        },
        orElse: () => {},
      );
    });
  }

  @override
  Future<void> close() {
    imagePickerSubscription?.cancel();
    nameController.dispose();
    return super.close();
  }
}
