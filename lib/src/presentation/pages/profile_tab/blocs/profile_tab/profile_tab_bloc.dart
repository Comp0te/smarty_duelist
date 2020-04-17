import 'dart:async';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show IFileStorageRepository, IUserRepository;

import '../../../../core_blocs/core_blocs.dart'
    show ClearSelected, ImagePickerBloc;
import '../../../../routes/routes.dart' show ImageEditorModalArguments, Routes;

part 'profile_tab_bloc.freezed.dart';

@injectable
class ProfileTabBloc extends Bloc<ProfileTabEvent, ProfileTabState> {
  final IUserRepository _userRepository;
  final IFileStorageRepository _fileStorageRepository;
  final ImagePickerBloc imagePickerBloc;
  final nameController = TextEditingController();

  StreamSubscription imagePickerSubscription;

  ProfileTabBloc({
    @required IUserRepository userRepository,
    @required IFileStorageRepository fileStorageRepository,
    @required this.imagePickerBloc,
  })  : assert(userRepository != null),
        assert(fileStorageRepository != null),
        _userRepository = userRepository,
        _fileStorageRepository = fileStorageRepository {
    imagePickerSubscription = _getImagePickerSubscription();
  }

  @override
  ProfileTabState get initialState => const ProfileTabState();

  @override
  Stream<ProfileTabState> mapEventToState(ProfileTabEvent event) async* {
    yield* event.map(
      avatarSelected: (event) async* {
        yield state.copyWith.call(avatar: event.avatar);
      },
      submit: (event) async* {
        yield state.copyWith.call(loading: true);
        await _fileStorageRepository.uploadAvatar(state.avatar);
        await _userRepository.updateProfile(name: nameController.text);
        yield state.copyWith.call(loading: false);
      },
    );
  }

  StreamSubscription _getImagePickerSubscription() {
    return imagePickerBloc.listen((pickerState) {
      pickerState.maybeWhen(
        imageSelected: (imageData) async {
          final editedImage = await ExtendedNavigator.rootNavigator.pushNamed(
            Routes.imageEditorModal,
            arguments: ImageEditorModalArguments(
              imagePickerBloc: imagePickerBloc,
            ),
          );

          if (editedImage is Uint8List && editedImage != null) {
            add(AvatarSelected(editedImage));
          }
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

@freezed
abstract class ProfileTabEvent with _$ProfileTabEvent {
  const factory ProfileTabEvent.avatarSelected(
    Uint8List avatar,
  ) = AvatarSelected;
  const factory ProfileTabEvent.submit() = Submit;
}

@freezed
abstract class ProfileTabState with _$ProfileTabState {
  const factory ProfileTabState({
    bool loading,
    Uint8List avatar,
    String name,
  }) = _ProfileTabState;
}
