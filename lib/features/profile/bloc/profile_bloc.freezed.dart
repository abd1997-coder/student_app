// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
    _$GetProfileImpl value,
    $Res Function(_$GetProfileImpl) then,
  ) = __$$GetProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
    _$GetProfileImpl _value,
    $Res Function(_$GetProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileEvent {
  const factory _GetProfile() = _$GetProfileImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResults? profileResults) getProfileSuccess,
    required TResult Function(GeneralException? generalException)
    getProfileFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult? Function(GeneralException? generalException)? getProfileFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult Function(GeneralException? generalException)? getProfileFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetProfileLoading value) getProfileLoading,
    required TResult Function(_GetProfileSuccess value) getProfileSuccess,
    required TResult Function(_GetProfileFailed value) getProfileFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetProfileLoading value)? getProfileLoading,
    TResult? Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult? Function(_GetProfileFailed value)? getProfileFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetProfileLoading value)? getProfileLoading,
    TResult Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult Function(_GetProfileFailed value)? getProfileFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResults? profileResults) getProfileSuccess,
    required TResult Function(GeneralException? generalException)
    getProfileFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult? Function(GeneralException? generalException)? getProfileFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult Function(GeneralException? generalException)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetProfileLoading value) getProfileLoading,
    required TResult Function(_GetProfileSuccess value) getProfileSuccess,
    required TResult Function(_GetProfileFailed value) getProfileFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetProfileLoading value)? getProfileLoading,
    TResult? Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult? Function(_GetProfileFailed value)? getProfileFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetProfileLoading value)? getProfileLoading,
    TResult Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult Function(_GetProfileFailed value)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetProfileLoadingImplCopyWith<$Res> {
  factory _$$GetProfileLoadingImplCopyWith(
    _$GetProfileLoadingImpl value,
    $Res Function(_$GetProfileLoadingImpl) then,
  ) = __$$GetProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetProfileLoadingImpl>
    implements _$$GetProfileLoadingImplCopyWith<$Res> {
  __$$GetProfileLoadingImplCopyWithImpl(
    _$GetProfileLoadingImpl _value,
    $Res Function(_$GetProfileLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileLoadingImpl implements _GetProfileLoading {
  const _$GetProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.getProfileLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResults? profileResults) getProfileSuccess,
    required TResult Function(GeneralException? generalException)
    getProfileFailed,
  }) {
    return getProfileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult? Function(GeneralException? generalException)? getProfileFailed,
  }) {
    return getProfileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult Function(GeneralException? generalException)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (getProfileLoading != null) {
      return getProfileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetProfileLoading value) getProfileLoading,
    required TResult Function(_GetProfileSuccess value) getProfileSuccess,
    required TResult Function(_GetProfileFailed value) getProfileFailed,
  }) {
    return getProfileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetProfileLoading value)? getProfileLoading,
    TResult? Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult? Function(_GetProfileFailed value)? getProfileFailed,
  }) {
    return getProfileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetProfileLoading value)? getProfileLoading,
    TResult Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult Function(_GetProfileFailed value)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (getProfileLoading != null) {
      return getProfileLoading(this);
    }
    return orElse();
  }
}

abstract class _GetProfileLoading implements ProfileState {
  const factory _GetProfileLoading() = _$GetProfileLoadingImpl;
}

/// @nodoc
abstract class _$$GetProfileSuccessImplCopyWith<$Res> {
  factory _$$GetProfileSuccessImplCopyWith(
    _$GetProfileSuccessImpl value,
    $Res Function(_$GetProfileSuccessImpl) then,
  ) = __$$GetProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileResults? profileResults});
}

/// @nodoc
class __$$GetProfileSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetProfileSuccessImpl>
    implements _$$GetProfileSuccessImplCopyWith<$Res> {
  __$$GetProfileSuccessImplCopyWithImpl(
    _$GetProfileSuccessImpl _value,
    $Res Function(_$GetProfileSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profileResults = freezed}) {
    return _then(
      _$GetProfileSuccessImpl(
        profileResults:
            freezed == profileResults
                ? _value.profileResults
                : profileResults // ignore: cast_nullable_to_non_nullable
                    as ProfileResults?,
      ),
    );
  }
}

/// @nodoc

class _$GetProfileSuccessImpl implements _GetProfileSuccess {
  const _$GetProfileSuccessImpl({this.profileResults = null});

  @override
  @JsonKey()
  final ProfileResults? profileResults;

  @override
  String toString() {
    return 'ProfileState.getProfileSuccess(profileResults: $profileResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileSuccessImpl &&
            (identical(other.profileResults, profileResults) ||
                other.profileResults == profileResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileResults);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileSuccessImplCopyWith<_$GetProfileSuccessImpl> get copyWith =>
      __$$GetProfileSuccessImplCopyWithImpl<_$GetProfileSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResults? profileResults) getProfileSuccess,
    required TResult Function(GeneralException? generalException)
    getProfileFailed,
  }) {
    return getProfileSuccess(profileResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult? Function(GeneralException? generalException)? getProfileFailed,
  }) {
    return getProfileSuccess?.call(profileResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult Function(GeneralException? generalException)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(profileResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetProfileLoading value) getProfileLoading,
    required TResult Function(_GetProfileSuccess value) getProfileSuccess,
    required TResult Function(_GetProfileFailed value) getProfileFailed,
  }) {
    return getProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetProfileLoading value)? getProfileLoading,
    TResult? Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult? Function(_GetProfileFailed value)? getProfileFailed,
  }) {
    return getProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetProfileLoading value)? getProfileLoading,
    TResult Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult Function(_GetProfileFailed value)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetProfileSuccess implements ProfileState {
  const factory _GetProfileSuccess({final ProfileResults? profileResults}) =
      _$GetProfileSuccessImpl;

  ProfileResults? get profileResults;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileSuccessImplCopyWith<_$GetProfileSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileFailedImplCopyWith<$Res> {
  factory _$$GetProfileFailedImplCopyWith(
    _$GetProfileFailedImpl value,
    $Res Function(_$GetProfileFailedImpl) then,
  ) = __$$GetProfileFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$GetProfileFailedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetProfileFailedImpl>
    implements _$$GetProfileFailedImplCopyWith<$Res> {
  __$$GetProfileFailedImplCopyWithImpl(
    _$GetProfileFailedImpl _value,
    $Res Function(_$GetProfileFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$GetProfileFailedImpl(
        generalException:
            freezed == generalException
                ? _value.generalException
                : generalException // ignore: cast_nullable_to_non_nullable
                    as GeneralException?,
      ),
    );
  }
}

/// @nodoc

class _$GetProfileFailedImpl implements _GetProfileFailed {
  const _$GetProfileFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'ProfileState.getProfileFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileFailedImplCopyWith<_$GetProfileFailedImpl> get copyWith =>
      __$$GetProfileFailedImplCopyWithImpl<_$GetProfileFailedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResults? profileResults) getProfileSuccess,
    required TResult Function(GeneralException? generalException)
    getProfileFailed,
  }) {
    return getProfileFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult? Function(GeneralException? generalException)? getProfileFailed,
  }) {
    return getProfileFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResults? profileResults)? getProfileSuccess,
    TResult Function(GeneralException? generalException)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (getProfileFailed != null) {
      return getProfileFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetProfileLoading value) getProfileLoading,
    required TResult Function(_GetProfileSuccess value) getProfileSuccess,
    required TResult Function(_GetProfileFailed value) getProfileFailed,
  }) {
    return getProfileFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetProfileLoading value)? getProfileLoading,
    TResult? Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult? Function(_GetProfileFailed value)? getProfileFailed,
  }) {
    return getProfileFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetProfileLoading value)? getProfileLoading,
    TResult Function(_GetProfileSuccess value)? getProfileSuccess,
    TResult Function(_GetProfileFailed value)? getProfileFailed,
    required TResult orElse(),
  }) {
    if (getProfileFailed != null) {
      return getProfileFailed(this);
    }
    return orElse();
  }
}

abstract class _GetProfileFailed implements ProfileState {
  const factory _GetProfileFailed({final GeneralException? generalException}) =
      _$GetProfileFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileFailedImplCopyWith<_$GetProfileFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
