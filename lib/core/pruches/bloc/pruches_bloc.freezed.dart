// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pruches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PruchesEvent {
  String get id => throw _privateConstructorUsedError;
  PruchesType get pruchesType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, PruchesType pruchesType) buyMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, PruchesType pruchesType)? buyMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, PruchesType pruchesType)? buyMaterial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyObject value) buyMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyObject value)? buyMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyObject value)? buyMaterial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of PruchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PruchesEventCopyWith<PruchesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PruchesEventCopyWith<$Res> {
  factory $PruchesEventCopyWith(
    PruchesEvent value,
    $Res Function(PruchesEvent) then,
  ) = _$PruchesEventCopyWithImpl<$Res, PruchesEvent>;
  @useResult
  $Res call({String id, PruchesType pruchesType});
}

/// @nodoc
class _$PruchesEventCopyWithImpl<$Res, $Val extends PruchesEvent>
    implements $PruchesEventCopyWith<$Res> {
  _$PruchesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PruchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? pruchesType = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            pruchesType:
                null == pruchesType
                    ? _value.pruchesType
                    : pruchesType // ignore: cast_nullable_to_non_nullable
                        as PruchesType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BuyObjectImplCopyWith<$Res>
    implements $PruchesEventCopyWith<$Res> {
  factory _$$BuyObjectImplCopyWith(
    _$BuyObjectImpl value,
    $Res Function(_$BuyObjectImpl) then,
  ) = __$$BuyObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, PruchesType pruchesType});
}

/// @nodoc
class __$$BuyObjectImplCopyWithImpl<$Res>
    extends _$PruchesEventCopyWithImpl<$Res, _$BuyObjectImpl>
    implements _$$BuyObjectImplCopyWith<$Res> {
  __$$BuyObjectImplCopyWithImpl(
    _$BuyObjectImpl _value,
    $Res Function(_$BuyObjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PruchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? pruchesType = null}) {
    return _then(
      _$BuyObjectImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
        null == pruchesType
            ? _value.pruchesType
            : pruchesType // ignore: cast_nullable_to_non_nullable
                as PruchesType,
      ),
    );
  }
}

/// @nodoc

class _$BuyObjectImpl implements _BuyObject {
  const _$BuyObjectImpl(this.id, this.pruchesType);

  @override
  final String id;
  @override
  final PruchesType pruchesType;

  @override
  String toString() {
    return 'PruchesEvent.buyMaterial(id: $id, pruchesType: $pruchesType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pruchesType, pruchesType) ||
                other.pruchesType == pruchesType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pruchesType);

  /// Create a copy of PruchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyObjectImplCopyWith<_$BuyObjectImpl> get copyWith =>
      __$$BuyObjectImplCopyWithImpl<_$BuyObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, PruchesType pruchesType) buyMaterial,
  }) {
    return buyMaterial(id, pruchesType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, PruchesType pruchesType)? buyMaterial,
  }) {
    return buyMaterial?.call(id, pruchesType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, PruchesType pruchesType)? buyMaterial,
    required TResult orElse(),
  }) {
    if (buyMaterial != null) {
      return buyMaterial(id, pruchesType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyObject value) buyMaterial,
  }) {
    return buyMaterial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyObject value)? buyMaterial,
  }) {
    return buyMaterial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyObject value)? buyMaterial,
    required TResult orElse(),
  }) {
    if (buyMaterial != null) {
      return buyMaterial(this);
    }
    return orElse();
  }
}

abstract class _BuyObject implements PruchesEvent {
  const factory _BuyObject(final String id, final PruchesType pruchesType) =
      _$BuyObjectImpl;

  @override
  String get id;
  @override
  PruchesType get pruchesType;

  /// Create a copy of PruchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyObjectImplCopyWith<_$BuyObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PruchesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buyingLoading,
    required TResult Function() buyingSucceed,
    required TResult Function(GeneralException? generalException) buyingFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buyingLoading,
    TResult? Function()? buyingSucceed,
    TResult? Function(GeneralException? generalException)? buyingFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buyingLoading,
    TResult Function()? buyingSucceed,
    TResult Function(GeneralException? generalException)? buyingFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BuyingLoading value) buyingLoading,
    required TResult Function(_buyingSucceed value) buyingSucceed,
    required TResult Function(_buyingFailed value) buyingFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BuyingLoading value)? buyingLoading,
    TResult? Function(_buyingSucceed value)? buyingSucceed,
    TResult? Function(_buyingFailed value)? buyingFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BuyingLoading value)? buyingLoading,
    TResult Function(_buyingSucceed value)? buyingSucceed,
    TResult Function(_buyingFailed value)? buyingFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PruchesStateCopyWith<$Res> {
  factory $PruchesStateCopyWith(
    PruchesState value,
    $Res Function(PruchesState) then,
  ) = _$PruchesStateCopyWithImpl<$Res, PruchesState>;
}

/// @nodoc
class _$PruchesStateCopyWithImpl<$Res, $Val extends PruchesState>
    implements $PruchesStateCopyWith<$Res> {
  _$PruchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PruchesState
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
    extends _$PruchesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PruchesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PruchesState.initial()';
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
    required TResult Function() buyingLoading,
    required TResult Function() buyingSucceed,
    required TResult Function(GeneralException? generalException) buyingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buyingLoading,
    TResult? Function()? buyingSucceed,
    TResult? Function(GeneralException? generalException)? buyingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buyingLoading,
    TResult Function()? buyingSucceed,
    TResult Function(GeneralException? generalException)? buyingFailed,
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
    required TResult Function(_BuyingLoading value) buyingLoading,
    required TResult Function(_buyingSucceed value) buyingSucceed,
    required TResult Function(_buyingFailed value) buyingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BuyingLoading value)? buyingLoading,
    TResult? Function(_buyingSucceed value)? buyingSucceed,
    TResult? Function(_buyingFailed value)? buyingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BuyingLoading value)? buyingLoading,
    TResult Function(_buyingSucceed value)? buyingSucceed,
    TResult Function(_buyingFailed value)? buyingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PruchesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BuyingLoadingImplCopyWith<$Res> {
  factory _$$BuyingLoadingImplCopyWith(
    _$BuyingLoadingImpl value,
    $Res Function(_$BuyingLoadingImpl) then,
  ) = __$$BuyingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BuyingLoadingImplCopyWithImpl<$Res>
    extends _$PruchesStateCopyWithImpl<$Res, _$BuyingLoadingImpl>
    implements _$$BuyingLoadingImplCopyWith<$Res> {
  __$$BuyingLoadingImplCopyWithImpl(
    _$BuyingLoadingImpl _value,
    $Res Function(_$BuyingLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PruchesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BuyingLoadingImpl implements _BuyingLoading {
  const _$BuyingLoadingImpl();

  @override
  String toString() {
    return 'PruchesState.buyingLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BuyingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buyingLoading,
    required TResult Function() buyingSucceed,
    required TResult Function(GeneralException? generalException) buyingFailed,
  }) {
    return buyingLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buyingLoading,
    TResult? Function()? buyingSucceed,
    TResult? Function(GeneralException? generalException)? buyingFailed,
  }) {
    return buyingLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buyingLoading,
    TResult Function()? buyingSucceed,
    TResult Function(GeneralException? generalException)? buyingFailed,
    required TResult orElse(),
  }) {
    if (buyingLoading != null) {
      return buyingLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BuyingLoading value) buyingLoading,
    required TResult Function(_buyingSucceed value) buyingSucceed,
    required TResult Function(_buyingFailed value) buyingFailed,
  }) {
    return buyingLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BuyingLoading value)? buyingLoading,
    TResult? Function(_buyingSucceed value)? buyingSucceed,
    TResult? Function(_buyingFailed value)? buyingFailed,
  }) {
    return buyingLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BuyingLoading value)? buyingLoading,
    TResult Function(_buyingSucceed value)? buyingSucceed,
    TResult Function(_buyingFailed value)? buyingFailed,
    required TResult orElse(),
  }) {
    if (buyingLoading != null) {
      return buyingLoading(this);
    }
    return orElse();
  }
}

abstract class _BuyingLoading implements PruchesState {
  const factory _BuyingLoading() = _$BuyingLoadingImpl;
}

/// @nodoc
abstract class _$$buyingSucceedImplCopyWith<$Res> {
  factory _$$buyingSucceedImplCopyWith(
    _$buyingSucceedImpl value,
    $Res Function(_$buyingSucceedImpl) then,
  ) = __$$buyingSucceedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$buyingSucceedImplCopyWithImpl<$Res>
    extends _$PruchesStateCopyWithImpl<$Res, _$buyingSucceedImpl>
    implements _$$buyingSucceedImplCopyWith<$Res> {
  __$$buyingSucceedImplCopyWithImpl(
    _$buyingSucceedImpl _value,
    $Res Function(_$buyingSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PruchesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$buyingSucceedImpl implements _buyingSucceed {
  const _$buyingSucceedImpl();

  @override
  String toString() {
    return 'PruchesState.buyingSucceed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$buyingSucceedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buyingLoading,
    required TResult Function() buyingSucceed,
    required TResult Function(GeneralException? generalException) buyingFailed,
  }) {
    return buyingSucceed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buyingLoading,
    TResult? Function()? buyingSucceed,
    TResult? Function(GeneralException? generalException)? buyingFailed,
  }) {
    return buyingSucceed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buyingLoading,
    TResult Function()? buyingSucceed,
    TResult Function(GeneralException? generalException)? buyingFailed,
    required TResult orElse(),
  }) {
    if (buyingSucceed != null) {
      return buyingSucceed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BuyingLoading value) buyingLoading,
    required TResult Function(_buyingSucceed value) buyingSucceed,
    required TResult Function(_buyingFailed value) buyingFailed,
  }) {
    return buyingSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BuyingLoading value)? buyingLoading,
    TResult? Function(_buyingSucceed value)? buyingSucceed,
    TResult? Function(_buyingFailed value)? buyingFailed,
  }) {
    return buyingSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BuyingLoading value)? buyingLoading,
    TResult Function(_buyingSucceed value)? buyingSucceed,
    TResult Function(_buyingFailed value)? buyingFailed,
    required TResult orElse(),
  }) {
    if (buyingSucceed != null) {
      return buyingSucceed(this);
    }
    return orElse();
  }
}

abstract class _buyingSucceed implements PruchesState {
  const factory _buyingSucceed() = _$buyingSucceedImpl;
}

/// @nodoc
abstract class _$$buyingFailedImplCopyWith<$Res> {
  factory _$$buyingFailedImplCopyWith(
    _$buyingFailedImpl value,
    $Res Function(_$buyingFailedImpl) then,
  ) = __$$buyingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$buyingFailedImplCopyWithImpl<$Res>
    extends _$PruchesStateCopyWithImpl<$Res, _$buyingFailedImpl>
    implements _$$buyingFailedImplCopyWith<$Res> {
  __$$buyingFailedImplCopyWithImpl(
    _$buyingFailedImpl _value,
    $Res Function(_$buyingFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PruchesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$buyingFailedImpl(
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

class _$buyingFailedImpl implements _buyingFailed {
  const _$buyingFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'PruchesState.buyingFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$buyingFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of PruchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$buyingFailedImplCopyWith<_$buyingFailedImpl> get copyWith =>
      __$$buyingFailedImplCopyWithImpl<_$buyingFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() buyingLoading,
    required TResult Function() buyingSucceed,
    required TResult Function(GeneralException? generalException) buyingFailed,
  }) {
    return buyingFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? buyingLoading,
    TResult? Function()? buyingSucceed,
    TResult? Function(GeneralException? generalException)? buyingFailed,
  }) {
    return buyingFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? buyingLoading,
    TResult Function()? buyingSucceed,
    TResult Function(GeneralException? generalException)? buyingFailed,
    required TResult orElse(),
  }) {
    if (buyingFailed != null) {
      return buyingFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BuyingLoading value) buyingLoading,
    required TResult Function(_buyingSucceed value) buyingSucceed,
    required TResult Function(_buyingFailed value) buyingFailed,
  }) {
    return buyingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BuyingLoading value)? buyingLoading,
    TResult? Function(_buyingSucceed value)? buyingSucceed,
    TResult? Function(_buyingFailed value)? buyingFailed,
  }) {
    return buyingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BuyingLoading value)? buyingLoading,
    TResult Function(_buyingSucceed value)? buyingSucceed,
    TResult Function(_buyingFailed value)? buyingFailed,
    required TResult orElse(),
  }) {
    if (buyingFailed != null) {
      return buyingFailed(this);
    }
    return orElse();
  }
}

abstract class _buyingFailed implements PruchesState {
  const factory _buyingFailed({final GeneralException? generalException}) =
      _$buyingFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of PruchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$buyingFailedImplCopyWith<_$buyingFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
