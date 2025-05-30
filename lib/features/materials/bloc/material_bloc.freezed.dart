// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MaterialEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getMaterialByID,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getMaterialByID,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getMaterialByID,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMaterialByID value) getMaterialByID,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMaterialByID value)? getMaterialByID,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMaterialByID value)? getMaterialByID,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of MaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialEventCopyWith<MaterialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialEventCopyWith<$Res> {
  factory $MaterialEventCopyWith(
    MaterialEvent value,
    $Res Function(MaterialEvent) then,
  ) = _$MaterialEventCopyWithImpl<$Res, MaterialEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MaterialEventCopyWithImpl<$Res, $Val extends MaterialEvent>
    implements $MaterialEventCopyWith<$Res> {
  _$MaterialEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetMaterialByIDImplCopyWith<$Res>
    implements $MaterialEventCopyWith<$Res> {
  factory _$$GetMaterialByIDImplCopyWith(
    _$GetMaterialByIDImpl value,
    $Res Function(_$GetMaterialByIDImpl) then,
  ) = __$$GetMaterialByIDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetMaterialByIDImplCopyWithImpl<$Res>
    extends _$MaterialEventCopyWithImpl<$Res, _$GetMaterialByIDImpl>
    implements _$$GetMaterialByIDImplCopyWith<$Res> {
  __$$GetMaterialByIDImplCopyWithImpl(
    _$GetMaterialByIDImpl _value,
    $Res Function(_$GetMaterialByIDImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetMaterialByIDImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetMaterialByIDImpl implements _GetMaterialByID {
  const _$GetMaterialByIDImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MaterialEvent.getMaterialByID(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMaterialByIDImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMaterialByIDImplCopyWith<_$GetMaterialByIDImpl> get copyWith =>
      __$$GetMaterialByIDImplCopyWithImpl<_$GetMaterialByIDImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getMaterialByID,
  }) {
    return getMaterialByID(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getMaterialByID,
  }) {
    return getMaterialByID?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getMaterialByID,
    required TResult orElse(),
  }) {
    if (getMaterialByID != null) {
      return getMaterialByID(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMaterialByID value) getMaterialByID,
  }) {
    return getMaterialByID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMaterialByID value)? getMaterialByID,
  }) {
    return getMaterialByID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMaterialByID value)? getMaterialByID,
    required TResult orElse(),
  }) {
    if (getMaterialByID != null) {
      return getMaterialByID(this);
    }
    return orElse();
  }
}

abstract class _GetMaterialByID implements MaterialEvent {
  const factory _GetMaterialByID(final String id) = _$GetMaterialByIDImpl;

  @override
  String get id;

  /// Create a copy of MaterialEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMaterialByIDImplCopyWith<_$GetMaterialByIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MaterialDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMaterial,
    required TResult Function(MaterialResults? materialResults) successMaterial,
    required TResult Function(GeneralException? generalException)
    failedMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMaterial,
    TResult? Function(MaterialResults? materialResults)? successMaterial,
    TResult? Function(GeneralException? generalException)? failedMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMaterial,
    TResult Function(MaterialResults? materialResults)? successMaterial,
    TResult Function(GeneralException? generalException)? failedMaterial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MaterialDetailLoading value) loadingMaterial,
    required TResult Function(_MaterialDetailSuccess value) successMaterial,
    required TResult Function(_MaterialDetailFailed value) failedMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult? Function(_MaterialDetailSuccess value)? successMaterial,
    TResult? Function(_MaterialDetailFailed value)? failedMaterial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult Function(_MaterialDetailSuccess value)? successMaterial,
    TResult Function(_MaterialDetailFailed value)? failedMaterial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialDetailStateCopyWith<$Res> {
  factory $MaterialDetailStateCopyWith(
    MaterialDetailState value,
    $Res Function(MaterialDetailState) then,
  ) = _$MaterialDetailStateCopyWithImpl<$Res, MaterialDetailState>;
}

/// @nodoc
class _$MaterialDetailStateCopyWithImpl<$Res, $Val extends MaterialDetailState>
    implements $MaterialDetailStateCopyWith<$Res> {
  _$MaterialDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialDetailState
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
    extends _$MaterialDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MaterialDetailState.initial()';
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
    required TResult Function() loadingMaterial,
    required TResult Function(MaterialResults? materialResults) successMaterial,
    required TResult Function(GeneralException? generalException)
    failedMaterial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMaterial,
    TResult? Function(MaterialResults? materialResults)? successMaterial,
    TResult? Function(GeneralException? generalException)? failedMaterial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMaterial,
    TResult Function(MaterialResults? materialResults)? successMaterial,
    TResult Function(GeneralException? generalException)? failedMaterial,
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
    required TResult Function(_MaterialDetailLoading value) loadingMaterial,
    required TResult Function(_MaterialDetailSuccess value) successMaterial,
    required TResult Function(_MaterialDetailFailed value) failedMaterial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult? Function(_MaterialDetailSuccess value)? successMaterial,
    TResult? Function(_MaterialDetailFailed value)? failedMaterial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult Function(_MaterialDetailSuccess value)? successMaterial,
    TResult Function(_MaterialDetailFailed value)? failedMaterial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MaterialDetailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MaterialDetailLoadingImplCopyWith<$Res> {
  factory _$$MaterialDetailLoadingImplCopyWith(
    _$MaterialDetailLoadingImpl value,
    $Res Function(_$MaterialDetailLoadingImpl) then,
  ) = __$$MaterialDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialDetailLoadingImplCopyWithImpl<$Res>
    extends _$MaterialDetailStateCopyWithImpl<$Res, _$MaterialDetailLoadingImpl>
    implements _$$MaterialDetailLoadingImplCopyWith<$Res> {
  __$$MaterialDetailLoadingImplCopyWithImpl(
    _$MaterialDetailLoadingImpl _value,
    $Res Function(_$MaterialDetailLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaterialDetailLoadingImpl implements _MaterialDetailLoading {
  const _$MaterialDetailLoadingImpl();

  @override
  String toString() {
    return 'MaterialDetailState.loadingMaterial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMaterial,
    required TResult Function(MaterialResults? materialResults) successMaterial,
    required TResult Function(GeneralException? generalException)
    failedMaterial,
  }) {
    return loadingMaterial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMaterial,
    TResult? Function(MaterialResults? materialResults)? successMaterial,
    TResult? Function(GeneralException? generalException)? failedMaterial,
  }) {
    return loadingMaterial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMaterial,
    TResult Function(MaterialResults? materialResults)? successMaterial,
    TResult Function(GeneralException? generalException)? failedMaterial,
    required TResult orElse(),
  }) {
    if (loadingMaterial != null) {
      return loadingMaterial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MaterialDetailLoading value) loadingMaterial,
    required TResult Function(_MaterialDetailSuccess value) successMaterial,
    required TResult Function(_MaterialDetailFailed value) failedMaterial,
  }) {
    return loadingMaterial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult? Function(_MaterialDetailSuccess value)? successMaterial,
    TResult? Function(_MaterialDetailFailed value)? failedMaterial,
  }) {
    return loadingMaterial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult Function(_MaterialDetailSuccess value)? successMaterial,
    TResult Function(_MaterialDetailFailed value)? failedMaterial,
    required TResult orElse(),
  }) {
    if (loadingMaterial != null) {
      return loadingMaterial(this);
    }
    return orElse();
  }
}

abstract class _MaterialDetailLoading implements MaterialDetailState {
  const factory _MaterialDetailLoading() = _$MaterialDetailLoadingImpl;
}

/// @nodoc
abstract class _$$MaterialDetailSuccessImplCopyWith<$Res> {
  factory _$$MaterialDetailSuccessImplCopyWith(
    _$MaterialDetailSuccessImpl value,
    $Res Function(_$MaterialDetailSuccessImpl) then,
  ) = __$$MaterialDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialResults? materialResults});
}

/// @nodoc
class __$$MaterialDetailSuccessImplCopyWithImpl<$Res>
    extends _$MaterialDetailStateCopyWithImpl<$Res, _$MaterialDetailSuccessImpl>
    implements _$$MaterialDetailSuccessImplCopyWith<$Res> {
  __$$MaterialDetailSuccessImplCopyWithImpl(
    _$MaterialDetailSuccessImpl _value,
    $Res Function(_$MaterialDetailSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? materialResults = freezed}) {
    return _then(
      _$MaterialDetailSuccessImpl(
        materialResults:
            freezed == materialResults
                ? _value.materialResults
                : materialResults // ignore: cast_nullable_to_non_nullable
                    as MaterialResults?,
      ),
    );
  }
}

/// @nodoc

class _$MaterialDetailSuccessImpl implements _MaterialDetailSuccess {
  const _$MaterialDetailSuccessImpl({this.materialResults = null});

  @override
  @JsonKey()
  final MaterialResults? materialResults;

  @override
  String toString() {
    return 'MaterialDetailState.successMaterial(materialResults: $materialResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialDetailSuccessImpl &&
            (identical(other.materialResults, materialResults) ||
                other.materialResults == materialResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialResults);

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialDetailSuccessImplCopyWith<_$MaterialDetailSuccessImpl>
  get copyWith =>
      __$$MaterialDetailSuccessImplCopyWithImpl<_$MaterialDetailSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMaterial,
    required TResult Function(MaterialResults? materialResults) successMaterial,
    required TResult Function(GeneralException? generalException)
    failedMaterial,
  }) {
    return successMaterial(materialResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMaterial,
    TResult? Function(MaterialResults? materialResults)? successMaterial,
    TResult? Function(GeneralException? generalException)? failedMaterial,
  }) {
    return successMaterial?.call(materialResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMaterial,
    TResult Function(MaterialResults? materialResults)? successMaterial,
    TResult Function(GeneralException? generalException)? failedMaterial,
    required TResult orElse(),
  }) {
    if (successMaterial != null) {
      return successMaterial(materialResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MaterialDetailLoading value) loadingMaterial,
    required TResult Function(_MaterialDetailSuccess value) successMaterial,
    required TResult Function(_MaterialDetailFailed value) failedMaterial,
  }) {
    return successMaterial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult? Function(_MaterialDetailSuccess value)? successMaterial,
    TResult? Function(_MaterialDetailFailed value)? failedMaterial,
  }) {
    return successMaterial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult Function(_MaterialDetailSuccess value)? successMaterial,
    TResult Function(_MaterialDetailFailed value)? failedMaterial,
    required TResult orElse(),
  }) {
    if (successMaterial != null) {
      return successMaterial(this);
    }
    return orElse();
  }
}

abstract class _MaterialDetailSuccess implements MaterialDetailState {
  const factory _MaterialDetailSuccess({
    final MaterialResults? materialResults,
  }) = _$MaterialDetailSuccessImpl;

  MaterialResults? get materialResults;

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialDetailSuccessImplCopyWith<_$MaterialDetailSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialDetailFailedImplCopyWith<$Res> {
  factory _$$MaterialDetailFailedImplCopyWith(
    _$MaterialDetailFailedImpl value,
    $Res Function(_$MaterialDetailFailedImpl) then,
  ) = __$$MaterialDetailFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$MaterialDetailFailedImplCopyWithImpl<$Res>
    extends _$MaterialDetailStateCopyWithImpl<$Res, _$MaterialDetailFailedImpl>
    implements _$$MaterialDetailFailedImplCopyWith<$Res> {
  __$$MaterialDetailFailedImplCopyWithImpl(
    _$MaterialDetailFailedImpl _value,
    $Res Function(_$MaterialDetailFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$MaterialDetailFailedImpl(
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

class _$MaterialDetailFailedImpl implements _MaterialDetailFailed {
  const _$MaterialDetailFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'MaterialDetailState.failedMaterial(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialDetailFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialDetailFailedImplCopyWith<_$MaterialDetailFailedImpl>
  get copyWith =>
      __$$MaterialDetailFailedImplCopyWithImpl<_$MaterialDetailFailedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMaterial,
    required TResult Function(MaterialResults? materialResults) successMaterial,
    required TResult Function(GeneralException? generalException)
    failedMaterial,
  }) {
    return failedMaterial(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMaterial,
    TResult? Function(MaterialResults? materialResults)? successMaterial,
    TResult? Function(GeneralException? generalException)? failedMaterial,
  }) {
    return failedMaterial?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMaterial,
    TResult Function(MaterialResults? materialResults)? successMaterial,
    TResult Function(GeneralException? generalException)? failedMaterial,
    required TResult orElse(),
  }) {
    if (failedMaterial != null) {
      return failedMaterial(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MaterialDetailLoading value) loadingMaterial,
    required TResult Function(_MaterialDetailSuccess value) successMaterial,
    required TResult Function(_MaterialDetailFailed value) failedMaterial,
  }) {
    return failedMaterial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult? Function(_MaterialDetailSuccess value)? successMaterial,
    TResult? Function(_MaterialDetailFailed value)? failedMaterial,
  }) {
    return failedMaterial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MaterialDetailLoading value)? loadingMaterial,
    TResult Function(_MaterialDetailSuccess value)? successMaterial,
    TResult Function(_MaterialDetailFailed value)? failedMaterial,
    required TResult orElse(),
  }) {
    if (failedMaterial != null) {
      return failedMaterial(this);
    }
    return orElse();
  }
}

abstract class _MaterialDetailFailed implements MaterialDetailState {
  const factory _MaterialDetailFailed({
    final GeneralException? generalException,
  }) = _$MaterialDetailFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of MaterialDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialDetailFailedImplCopyWith<_$MaterialDetailFailedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
