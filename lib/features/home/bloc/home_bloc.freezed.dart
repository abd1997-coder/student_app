// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHome value) getHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHome value)? getHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHome value)? getHome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetHomeImplCopyWith<$Res> {
  factory _$$GetHomeImplCopyWith(
    _$GetHomeImpl value,
    $Res Function(_$GetHomeImpl) then,
  ) = __$$GetHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeImpl>
    implements _$$GetHomeImplCopyWith<$Res> {
  __$$GetHomeImplCopyWithImpl(
    _$GetHomeImpl _value,
    $Res Function(_$GetHomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetHomeImpl implements _GetHome {
  const _$GetHomeImpl();

  @override
  String toString() {
    return 'HomeEvent.getHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({required TResult Function() getHome}) {
    return getHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? getHome}) {
    return getHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    required TResult orElse(),
  }) {
    if (getHome != null) {
      return getHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHome value) getHome,
  }) {
    return getHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHome value)? getHome,
  }) {
    return getHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHome value)? getHome,
    required TResult orElse(),
  }) {
    if (getHome != null) {
      return getHome(this);
    }
    return orElse();
  }
}

abstract class _GetHome implements HomeEvent {
  const factory _GetHome() = _$GetHomeImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHome,
    required TResult Function(HomeResults? homeResults) successHome,
    required TResult Function(GeneralException? generalException) failedHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHome,
    TResult? Function(HomeResults? homeResults)? successHome,
    TResult? Function(GeneralException? generalException)? failedHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHome,
    TResult Function(HomeResults? homeResults)? successHome,
    TResult Function(GeneralException? generalException)? failedHome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingHome value) loadingHome,
    required TResult Function(_SuccessHome value) successHome,
    required TResult Function(_FailedHome value) failedHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingHome value)? loadingHome,
    TResult? Function(_SuccessHome value)? successHome,
    TResult? Function(_FailedHome value)? failedHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingHome value)? loadingHome,
    TResult Function(_SuccessHome value)? successHome,
    TResult Function(_FailedHome value)? failedHome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() loadingHome,
    required TResult Function(HomeResults? homeResults) successHome,
    required TResult Function(GeneralException? generalException) failedHome,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHome,
    TResult? Function(HomeResults? homeResults)? successHome,
    TResult? Function(GeneralException? generalException)? failedHome,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHome,
    TResult Function(HomeResults? homeResults)? successHome,
    TResult Function(GeneralException? generalException)? failedHome,
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
    required TResult Function(_LoadingHome value) loadingHome,
    required TResult Function(_SuccessHome value) successHome,
    required TResult Function(_FailedHome value) failedHome,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingHome value)? loadingHome,
    TResult? Function(_SuccessHome value)? successHome,
    TResult? Function(_FailedHome value)? failedHome,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingHome value)? loadingHome,
    TResult Function(_SuccessHome value)? successHome,
    TResult Function(_FailedHome value)? failedHome,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingHomeImplCopyWith<$Res> {
  factory _$$LoadingHomeImplCopyWith(
    _$LoadingHomeImpl value,
    $Res Function(_$LoadingHomeImpl) then,
  ) = __$$LoadingHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeImpl>
    implements _$$LoadingHomeImplCopyWith<$Res> {
  __$$LoadingHomeImplCopyWithImpl(
    _$LoadingHomeImpl _value,
    $Res Function(_$LoadingHomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingHomeImpl implements _LoadingHome {
  const _$LoadingHomeImpl();

  @override
  String toString() {
    return 'HomeState.loadingHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHome,
    required TResult Function(HomeResults? homeResults) successHome,
    required TResult Function(GeneralException? generalException) failedHome,
  }) {
    return loadingHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHome,
    TResult? Function(HomeResults? homeResults)? successHome,
    TResult? Function(GeneralException? generalException)? failedHome,
  }) {
    return loadingHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHome,
    TResult Function(HomeResults? homeResults)? successHome,
    TResult Function(GeneralException? generalException)? failedHome,
    required TResult orElse(),
  }) {
    if (loadingHome != null) {
      return loadingHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingHome value) loadingHome,
    required TResult Function(_SuccessHome value) successHome,
    required TResult Function(_FailedHome value) failedHome,
  }) {
    return loadingHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingHome value)? loadingHome,
    TResult? Function(_SuccessHome value)? successHome,
    TResult? Function(_FailedHome value)? failedHome,
  }) {
    return loadingHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingHome value)? loadingHome,
    TResult Function(_SuccessHome value)? successHome,
    TResult Function(_FailedHome value)? failedHome,
    required TResult orElse(),
  }) {
    if (loadingHome != null) {
      return loadingHome(this);
    }
    return orElse();
  }
}

abstract class _LoadingHome implements HomeState {
  const factory _LoadingHome() = _$LoadingHomeImpl;
}

/// @nodoc
abstract class _$$SuccessHomeImplCopyWith<$Res> {
  factory _$$SuccessHomeImplCopyWith(
    _$SuccessHomeImpl value,
    $Res Function(_$SuccessHomeImpl) then,
  ) = __$$SuccessHomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeResults? homeResults});
}

/// @nodoc
class __$$SuccessHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SuccessHomeImpl>
    implements _$$SuccessHomeImplCopyWith<$Res> {
  __$$SuccessHomeImplCopyWithImpl(
    _$SuccessHomeImpl _value,
    $Res Function(_$SuccessHomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? homeResults = freezed}) {
    return _then(
      _$SuccessHomeImpl(
        homeResults:
            freezed == homeResults
                ? _value.homeResults
                : homeResults // ignore: cast_nullable_to_non_nullable
                    as HomeResults?,
      ),
    );
  }
}

/// @nodoc

class _$SuccessHomeImpl implements _SuccessHome {
  const _$SuccessHomeImpl({this.homeResults = null});

  @override
  @JsonKey()
  final HomeResults? homeResults;

  @override
  String toString() {
    return 'HomeState.successHome(homeResults: $homeResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessHomeImpl &&
            (identical(other.homeResults, homeResults) ||
                other.homeResults == homeResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeResults);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessHomeImplCopyWith<_$SuccessHomeImpl> get copyWith =>
      __$$SuccessHomeImplCopyWithImpl<_$SuccessHomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHome,
    required TResult Function(HomeResults? homeResults) successHome,
    required TResult Function(GeneralException? generalException) failedHome,
  }) {
    return successHome(homeResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHome,
    TResult? Function(HomeResults? homeResults)? successHome,
    TResult? Function(GeneralException? generalException)? failedHome,
  }) {
    return successHome?.call(homeResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHome,
    TResult Function(HomeResults? homeResults)? successHome,
    TResult Function(GeneralException? generalException)? failedHome,
    required TResult orElse(),
  }) {
    if (successHome != null) {
      return successHome(homeResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingHome value) loadingHome,
    required TResult Function(_SuccessHome value) successHome,
    required TResult Function(_FailedHome value) failedHome,
  }) {
    return successHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingHome value)? loadingHome,
    TResult? Function(_SuccessHome value)? successHome,
    TResult? Function(_FailedHome value)? failedHome,
  }) {
    return successHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingHome value)? loadingHome,
    TResult Function(_SuccessHome value)? successHome,
    TResult Function(_FailedHome value)? failedHome,
    required TResult orElse(),
  }) {
    if (successHome != null) {
      return successHome(this);
    }
    return orElse();
  }
}

abstract class _SuccessHome implements HomeState {
  const factory _SuccessHome({final HomeResults? homeResults}) =
      _$SuccessHomeImpl;

  HomeResults? get homeResults;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessHomeImplCopyWith<_$SuccessHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedHomeImplCopyWith<$Res> {
  factory _$$FailedHomeImplCopyWith(
    _$FailedHomeImpl value,
    $Res Function(_$FailedHomeImpl) then,
  ) = __$$FailedHomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$FailedHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$FailedHomeImpl>
    implements _$$FailedHomeImplCopyWith<$Res> {
  __$$FailedHomeImplCopyWithImpl(
    _$FailedHomeImpl _value,
    $Res Function(_$FailedHomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$FailedHomeImpl(
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

class _$FailedHomeImpl implements _FailedHome {
  const _$FailedHomeImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'HomeState.failedHome(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedHomeImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedHomeImplCopyWith<_$FailedHomeImpl> get copyWith =>
      __$$FailedHomeImplCopyWithImpl<_$FailedHomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHome,
    required TResult Function(HomeResults? homeResults) successHome,
    required TResult Function(GeneralException? generalException) failedHome,
  }) {
    return failedHome(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHome,
    TResult? Function(HomeResults? homeResults)? successHome,
    TResult? Function(GeneralException? generalException)? failedHome,
  }) {
    return failedHome?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHome,
    TResult Function(HomeResults? homeResults)? successHome,
    TResult Function(GeneralException? generalException)? failedHome,
    required TResult orElse(),
  }) {
    if (failedHome != null) {
      return failedHome(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingHome value) loadingHome,
    required TResult Function(_SuccessHome value) successHome,
    required TResult Function(_FailedHome value) failedHome,
  }) {
    return failedHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingHome value)? loadingHome,
    TResult? Function(_SuccessHome value)? successHome,
    TResult? Function(_FailedHome value)? failedHome,
  }) {
    return failedHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingHome value)? loadingHome,
    TResult Function(_SuccessHome value)? successHome,
    TResult Function(_FailedHome value)? failedHome,
    required TResult orElse(),
  }) {
    if (failedHome != null) {
      return failedHome(this);
    }
    return orElse();
  }
}

abstract class _FailedHome implements HomeState {
  const factory _FailedHome({final GeneralException? generalException}) =
      _$FailedHomeImpl;

  GeneralException? get generalException;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedHomeImplCopyWith<_$FailedHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
