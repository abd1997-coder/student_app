// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
    AuthenticationEvent value,
    $Res Function(AuthenticationEvent) then,
  ) = _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
    _$SignInImpl value,
    $Res Function(_$SignInImpl) then,
  ) = __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInParams signInParams});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
    _$SignInImpl _value,
    $Res Function(_$SignInImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? signInParams = null}) {
    return _then(
      _$SignInImpl(
        signInParams:
            null == signInParams
                ? _value.signInParams
                : signInParams // ignore: cast_nullable_to_non_nullable
                    as SignInParams,
      ),
    );
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.signInParams});

  @override
  final SignInParams signInParams;

  @override
  String toString() {
    return 'AuthenticationEvent.signIn(signInParams: $signInParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.signInParams, signInParams) ||
                other.signInParams == signInParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInParams);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return signIn(signInParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return signIn?.call(signInParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(signInParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthenticationEvent {
  const factory _SignIn({required final SignInParams signInParams}) =
      _$SignInImpl;

  SignInParams get signInParams;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
    _$SignUpImpl value,
    $Res Function(_$SignUpImpl) then,
  ) = __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpParams signUpParams});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
    _$SignUpImpl _value,
    $Res Function(_$SignUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? signUpParams = null}) {
    return _then(
      _$SignUpImpl(
        signUpParams:
            null == signUpParams
                ? _value.signUpParams
                : signUpParams // ignore: cast_nullable_to_non_nullable
                    as SignUpParams,
      ),
    );
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl({required this.signUpParams});

  @override
  final SignUpParams signUpParams;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(signUpParams: $signUpParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.signUpParams, signUpParams) ||
                other.signUpParams == signUpParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpParams);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return signUp(signUpParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return signUp?.call(signUpParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(signUpParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthenticationEvent {
  const factory _SignUp({required final SignUpParams signUpParams}) =
      _$SignUpImpl;

  SignUpParams get signUpParams;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyPhoneNumberImplCopyWith<$Res> {
  factory _$$VerifyPhoneNumberImplCopyWith(
    _$VerifyPhoneNumberImpl value,
    $Res Function(_$VerifyPhoneNumberImpl) then,
  ) = __$$VerifyPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyAccountParams verifyAccountParams});
}

/// @nodoc
class __$$VerifyPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$VerifyPhoneNumberImpl>
    implements _$$VerifyPhoneNumberImplCopyWith<$Res> {
  __$$VerifyPhoneNumberImplCopyWithImpl(
    _$VerifyPhoneNumberImpl _value,
    $Res Function(_$VerifyPhoneNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? verifyAccountParams = null}) {
    return _then(
      _$VerifyPhoneNumberImpl(
        verifyAccountParams:
            null == verifyAccountParams
                ? _value.verifyAccountParams
                : verifyAccountParams // ignore: cast_nullable_to_non_nullable
                    as VerifyAccountParams,
      ),
    );
  }
}

/// @nodoc

class _$VerifyPhoneNumberImpl implements _VerifyPhoneNumber {
  const _$VerifyPhoneNumberImpl({required this.verifyAccountParams});

  @override
  final VerifyAccountParams verifyAccountParams;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyAccount(verifyAccountParams: $verifyAccountParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhoneNumberImpl &&
            (identical(other.verifyAccountParams, verifyAccountParams) ||
                other.verifyAccountParams == verifyAccountParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyAccountParams);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      __$$VerifyPhoneNumberImplCopyWithImpl<_$VerifyPhoneNumberImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return verifyAccount(verifyAccountParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return verifyAccount?.call(verifyAccountParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (verifyAccount != null) {
      return verifyAccount(verifyAccountParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return verifyAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return verifyAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (verifyAccount != null) {
      return verifyAccount(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AuthenticationEvent {
  const factory _VerifyPhoneNumber({
    required final VerifyAccountParams verifyAccountParams,
  }) = _$VerifyPhoneNumberImpl;

  VerifyAccountParams get verifyAccountParams;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInByCodeImplCopyWith<$Res> {
  factory _$$SignInByCodeImplCopyWith(
    _$SignInByCodeImpl value,
    $Res Function(_$SignInByCodeImpl) then,
  ) = __$$SignInByCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyAccountParams verifyAccountParams});
}

/// @nodoc
class __$$SignInByCodeImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignInByCodeImpl>
    implements _$$SignInByCodeImplCopyWith<$Res> {
  __$$SignInByCodeImplCopyWithImpl(
    _$SignInByCodeImpl _value,
    $Res Function(_$SignInByCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? verifyAccountParams = null}) {
    return _then(
      _$SignInByCodeImpl(
        verifyAccountParams:
            null == verifyAccountParams
                ? _value.verifyAccountParams
                : verifyAccountParams // ignore: cast_nullable_to_non_nullable
                    as VerifyAccountParams,
      ),
    );
  }
}

/// @nodoc

class _$SignInByCodeImpl implements _SignInByCode {
  const _$SignInByCodeImpl({required this.verifyAccountParams});

  @override
  final VerifyAccountParams verifyAccountParams;

  @override
  String toString() {
    return 'AuthenticationEvent.signInByCode(verifyAccountParams: $verifyAccountParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInByCodeImpl &&
            (identical(other.verifyAccountParams, verifyAccountParams) ||
                other.verifyAccountParams == verifyAccountParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyAccountParams);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInByCodeImplCopyWith<_$SignInByCodeImpl> get copyWith =>
      __$$SignInByCodeImplCopyWithImpl<_$SignInByCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return signInByCode(verifyAccountParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return signInByCode?.call(verifyAccountParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (signInByCode != null) {
      return signInByCode(verifyAccountParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return signInByCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return signInByCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (signInByCode != null) {
      return signInByCode(this);
    }
    return orElse();
  }
}

abstract class _SignInByCode implements AuthenticationEvent {
  const factory _SignInByCode({
    required final VerifyAccountParams verifyAccountParams,
  }) = _$SignInByCodeImpl;

  VerifyAccountParams get verifyAccountParams;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInByCodeImplCopyWith<_$SignInByCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendVerificationCodeOnPhoneNumberImplCopyWith<$Res> {
  factory _$$ResendVerificationCodeOnPhoneNumberImplCopyWith(
    _$ResendVerificationCodeOnPhoneNumberImpl value,
    $Res Function(_$ResendVerificationCodeOnPhoneNumberImpl) then,
  ) = __$$ResendVerificationCodeOnPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, bool toResetPassword});
}

/// @nodoc
class __$$ResendVerificationCodeOnPhoneNumberImplCopyWithImpl<$Res>
    extends
        _$AuthenticationEventCopyWithImpl<
          $Res,
          _$ResendVerificationCodeOnPhoneNumberImpl
        >
    implements _$$ResendVerificationCodeOnPhoneNumberImplCopyWith<$Res> {
  __$$ResendVerificationCodeOnPhoneNumberImplCopyWithImpl(
    _$ResendVerificationCodeOnPhoneNumberImpl _value,
    $Res Function(_$ResendVerificationCodeOnPhoneNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null, Object? toResetPassword = null}) {
    return _then(
      _$ResendVerificationCodeOnPhoneNumberImpl(
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        toResetPassword:
            null == toResetPassword
                ? _value.toResetPassword
                : toResetPassword // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$ResendVerificationCodeOnPhoneNumberImpl
    implements _ResendVerificationCodeOnPhoneNumber {
  const _$ResendVerificationCodeOnPhoneNumberImpl({
    required this.phoneNumber,
    this.toResetPassword = false,
  });

  @override
  final String phoneNumber;
  @override
  @JsonKey()
  final bool toResetPassword;

  @override
  String toString() {
    return 'AuthenticationEvent.resendVerificationCodeOnPhoneNumber(phoneNumber: $phoneNumber, toResetPassword: $toResetPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendVerificationCodeOnPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.toResetPassword, toResetPassword) ||
                other.toResetPassword == toResetPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, toResetPassword);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendVerificationCodeOnPhoneNumberImplCopyWith<
    _$ResendVerificationCodeOnPhoneNumberImpl
  >
  get copyWith => __$$ResendVerificationCodeOnPhoneNumberImplCopyWithImpl<
    _$ResendVerificationCodeOnPhoneNumberImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return resendVerificationCodeOnPhoneNumber(phoneNumber, toResetPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return resendVerificationCodeOnPhoneNumber?.call(
      phoneNumber,
      toResetPassword,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (resendVerificationCodeOnPhoneNumber != null) {
      return resendVerificationCodeOnPhoneNumber(phoneNumber, toResetPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return resendVerificationCodeOnPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return resendVerificationCodeOnPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (resendVerificationCodeOnPhoneNumber != null) {
      return resendVerificationCodeOnPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _ResendVerificationCodeOnPhoneNumber
    implements AuthenticationEvent {
  const factory _ResendVerificationCodeOnPhoneNumber({
    required final String phoneNumber,
    final bool toResetPassword,
  }) = _$ResendVerificationCodeOnPhoneNumberImpl;

  String get phoneNumber;
  bool get toResetPassword;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendVerificationCodeOnPhoneNumberImplCopyWith<
    _$ResendVerificationCodeOnPhoneNumberImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivateResendButtonImplCopyWith<$Res> {
  factory _$$ActivateResendButtonImplCopyWith(
    _$ActivateResendButtonImpl value,
    $Res Function(_$ActivateResendButtonImpl) then,
  ) = __$$ActivateResendButtonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivateResendButtonImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ActivateResendButtonImpl>
    implements _$$ActivateResendButtonImplCopyWith<$Res> {
  __$$ActivateResendButtonImplCopyWithImpl(
    _$ActivateResendButtonImpl _value,
    $Res Function(_$ActivateResendButtonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ActivateResendButtonImpl implements _ActivateResendButton {
  const _$ActivateResendButtonImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.activateResendButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivateResendButtonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return activateResendButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return activateResendButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (activateResendButton != null) {
      return activateResendButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return activateResendButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return activateResendButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (activateResendButton != null) {
      return activateResendButton(this);
    }
    return orElse();
  }
}

abstract class _ActivateResendButton implements AuthenticationEvent {
  const factory _ActivateResendButton() = _$ActivateResendButtonImpl;
}

/// @nodoc
abstract class _$$DisplayTimeOnUIImplCopyWith<$Res> {
  factory _$$DisplayTimeOnUIImplCopyWith(
    _$DisplayTimeOnUIImpl value,
    $Res Function(_$DisplayTimeOnUIImpl) then,
  ) = __$$DisplayTimeOnUIImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remainingTime});
}

/// @nodoc
class __$$DisplayTimeOnUIImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$DisplayTimeOnUIImpl>
    implements _$$DisplayTimeOnUIImplCopyWith<$Res> {
  __$$DisplayTimeOnUIImplCopyWithImpl(
    _$DisplayTimeOnUIImpl _value,
    $Res Function(_$DisplayTimeOnUIImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? remainingTime = null}) {
    return _then(
      _$DisplayTimeOnUIImpl(
        remainingTime:
            null == remainingTime
                ? _value.remainingTime
                : remainingTime // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$DisplayTimeOnUIImpl implements _DisplayTimeOnUI {
  const _$DisplayTimeOnUIImpl({required this.remainingTime});

  @override
  final int remainingTime;

  @override
  String toString() {
    return 'AuthenticationEvent.displayTimeOnUI(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayTimeOnUIImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingTime);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayTimeOnUIImplCopyWith<_$DisplayTimeOnUIImpl> get copyWith =>
      __$$DisplayTimeOnUIImplCopyWithImpl<_$DisplayTimeOnUIImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return displayTimeOnUI(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return displayTimeOnUI?.call(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (displayTimeOnUI != null) {
      return displayTimeOnUI(remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return displayTimeOnUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return displayTimeOnUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (displayTimeOnUI != null) {
      return displayTimeOnUI(this);
    }
    return orElse();
  }
}

abstract class _DisplayTimeOnUI implements AuthenticationEvent {
  const factory _DisplayTimeOnUI({required final int remainingTime}) =
      _$DisplayTimeOnUIImpl;

  int get remainingTime;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayTimeOnUIImplCopyWith<_$DisplayTimeOnUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
    _$ResetPasswordImpl value,
    $Res Function(_$ResetPasswordImpl) then,
  ) = __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
    _$ResetPasswordImpl _value,
    $Res Function(_$ResetPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$ResetPasswordImpl(
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.resetPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return resetPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return resetPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthenticationEvent {
  const factory _ResetPassword({required final String password}) =
      _$ResetPasswordImpl;

  String get password;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecialtiesImplCopyWith<$Res> {
  factory _$$SpecialtiesImplCopyWith(
    _$SpecialtiesImpl value,
    $Res Function(_$SpecialtiesImpl) then,
  ) = __$$SpecialtiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecialtiesImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SpecialtiesImpl>
    implements _$$SpecialtiesImplCopyWith<$Res> {
  __$$SpecialtiesImplCopyWithImpl(
    _$SpecialtiesImpl _value,
    $Res Function(_$SpecialtiesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpecialtiesImpl implements _Specialties {
  const _$SpecialtiesImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.specialties()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpecialtiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInParams signInParams) signIn,
    required TResult Function(SignUpParams signUpParams) signUp,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    verifyAccount,
    required TResult Function(VerifyAccountParams verifyAccountParams)
    signInByCode,
    required TResult Function(String phoneNumber, bool toResetPassword)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function() activateResendButton,
    required TResult Function(int remainingTime) displayTimeOnUI,
    required TResult Function(String password) resetPassword,
    required TResult Function() specialties,
  }) {
    return specialties();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInParams signInParams)? signIn,
    TResult? Function(SignUpParams signUpParams)? signUp,
    TResult? Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult? Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult? Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function()? activateResendButton,
    TResult? Function(int remainingTime)? displayTimeOnUI,
    TResult? Function(String password)? resetPassword,
    TResult? Function()? specialties,
  }) {
    return specialties?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInParams signInParams)? signIn,
    TResult Function(SignUpParams signUpParams)? signUp,
    TResult Function(VerifyAccountParams verifyAccountParams)? verifyAccount,
    TResult Function(VerifyAccountParams verifyAccountParams)? signInByCode,
    TResult Function(String phoneNumber, bool toResetPassword)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function()? activateResendButton,
    TResult Function(int remainingTime)? displayTimeOnUI,
    TResult Function(String password)? resetPassword,
    TResult Function()? specialties,
    required TResult orElse(),
  }) {
    if (specialties != null) {
      return specialties();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_VerifyPhoneNumber value) verifyAccount,
    required TResult Function(_SignInByCode value) signInByCode,
    required TResult Function(_ResendVerificationCodeOnPhoneNumber value)
    resendVerificationCodeOnPhoneNumber,
    required TResult Function(_ActivateResendButton value) activateResendButton,
    required TResult Function(_DisplayTimeOnUI value) displayTimeOnUI,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Specialties value) specialties,
  }) {
    return specialties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult? Function(_SignInByCode value)? signInByCode,
    TResult? Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult? Function(_ActivateResendButton value)? activateResendButton,
    TResult? Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Specialties value)? specialties,
  }) {
    return specialties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_VerifyPhoneNumber value)? verifyAccount,
    TResult Function(_SignInByCode value)? signInByCode,
    TResult Function(_ResendVerificationCodeOnPhoneNumber value)?
    resendVerificationCodeOnPhoneNumber,
    TResult Function(_ActivateResendButton value)? activateResendButton,
    TResult Function(_DisplayTimeOnUI value)? displayTimeOnUI,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Specialties value)? specialties,
    required TResult orElse(),
  }) {
    if (specialties != null) {
      return specialties(this);
    }
    return orElse();
  }
}

abstract class _Specialties implements AuthenticationEvent {
  const factory _Specialties() = _$SpecialtiesImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
    AuthenticationState value,
    $Res Function(AuthenticationState) then,
  ) = _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticationInitialImplCopyWith<$Res> {
  factory _$$AuthenticationInitialImplCopyWith(
    _$AuthenticationInitialImpl value,
    $Res Function(_$AuthenticationInitialImpl) then,
  ) = __$$AuthenticationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationInitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationInitialImpl>
    implements _$$AuthenticationInitialImplCopyWith<$Res> {
  __$$AuthenticationInitialImplCopyWithImpl(
    _$AuthenticationInitialImpl _value,
    $Res Function(_$AuthenticationInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationInitialImpl implements _AuthenticationInitial {
  const _$AuthenticationInitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
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
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationInitial implements AuthenticationState {
  const factory _AuthenticationInitial() = _$AuthenticationInitialImpl;
}

/// @nodoc
abstract class _$$AuthenticationLoadingSignInImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingSignInImplCopyWith(
    _$AuthenticationLoadingSignInImpl value,
    $Res Function(_$AuthenticationLoadingSignInImpl) then,
  ) = __$$AuthenticationLoadingSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingSignInImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationLoadingSignInImpl
        >
    implements _$$AuthenticationLoadingSignInImplCopyWith<$Res> {
  __$$AuthenticationLoadingSignInImplCopyWithImpl(
    _$AuthenticationLoadingSignInImpl _value,
    $Res Function(_$AuthenticationLoadingSignInImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingSignInImpl
    implements _AuthenticationLoadingSignIn {
  const _$AuthenticationLoadingSignInImpl();

  @override
  String toString() {
    return 'AuthenticationState.loadingSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return loadingSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return loadingSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingSignIn != null) {
      return loadingSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return loadingSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return loadingSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingSignIn != null) {
      return loadingSignIn(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoadingSignIn implements AuthenticationState {
  const factory _AuthenticationLoadingSignIn() =
      _$AuthenticationLoadingSignInImpl;
}

/// @nodoc
abstract class _$$AuthenticationSignInSucceedImplCopyWith<$Res> {
  factory _$$AuthenticationSignInSucceedImplCopyWith(
    _$AuthenticationSignInSucceedImpl value,
    $Res Function(_$AuthenticationSignInSucceedImpl) then,
  ) = __$$AuthenticationSignInSucceedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationSignInSucceedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationSignInSucceedImpl
        >
    implements _$$AuthenticationSignInSucceedImplCopyWith<$Res> {
  __$$AuthenticationSignInSucceedImplCopyWithImpl(
    _$AuthenticationSignInSucceedImpl _value,
    $Res Function(_$AuthenticationSignInSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationSignInSucceedImpl
    implements _AuthenticationSignInSucceed {
  const _$AuthenticationSignInSucceedImpl();

  @override
  String toString() {
    return 'AuthenticationState.signInSucceed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignInSucceedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return signInSucceed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return signInSucceed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signInSucceed != null) {
      return signInSucceed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return signInSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return signInSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signInSucceed != null) {
      return signInSucceed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSignInSucceed implements AuthenticationState {
  const factory _AuthenticationSignInSucceed() =
      _$AuthenticationSignInSucceedImpl;
}

/// @nodoc
abstract class _$$AuthenticationSignInFailedImplCopyWith<$Res> {
  factory _$$AuthenticationSignInFailedImplCopyWith(
    _$AuthenticationSignInFailedImpl value,
    $Res Function(_$AuthenticationSignInFailedImpl) then,
  ) = __$$AuthenticationSignInFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$AuthenticationSignInFailedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationSignInFailedImpl
        >
    implements _$$AuthenticationSignInFailedImplCopyWith<$Res> {
  __$$AuthenticationSignInFailedImplCopyWithImpl(
    _$AuthenticationSignInFailedImpl _value,
    $Res Function(_$AuthenticationSignInFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$AuthenticationSignInFailedImpl(
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

class _$AuthenticationSignInFailedImpl implements _AuthenticationSignInFailed {
  const _$AuthenticationSignInFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'AuthenticationState.signInFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignInFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignInFailedImplCopyWith<_$AuthenticationSignInFailedImpl>
  get copyWith => __$$AuthenticationSignInFailedImplCopyWithImpl<
    _$AuthenticationSignInFailedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return signInFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return signInFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return signInFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return signInFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSignInFailed implements AuthenticationState {
  const factory _AuthenticationSignInFailed({
    final GeneralException? generalException,
  }) = _$AuthenticationSignInFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSignInFailedImplCopyWith<_$AuthenticationSignInFailedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationAccountNeedVerifyImplCopyWith<$Res> {
  factory _$$AuthenticationAccountNeedVerifyImplCopyWith(
    _$AuthenticationAccountNeedVerifyImpl value,
    $Res Function(_$AuthenticationAccountNeedVerifyImpl) then,
  ) = __$$AuthenticationAccountNeedVerifyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationAccountNeedVerifyImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationAccountNeedVerifyImpl
        >
    implements _$$AuthenticationAccountNeedVerifyImplCopyWith<$Res> {
  __$$AuthenticationAccountNeedVerifyImplCopyWithImpl(
    _$AuthenticationAccountNeedVerifyImpl _value,
    $Res Function(_$AuthenticationAccountNeedVerifyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationAccountNeedVerifyImpl
    implements _AuthenticationAccountNeedVerify {
  const _$AuthenticationAccountNeedVerifyImpl();

  @override
  String toString() {
    return 'AuthenticationState.accountNeedVerify()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationAccountNeedVerifyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return accountNeedVerify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return accountNeedVerify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (accountNeedVerify != null) {
      return accountNeedVerify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return accountNeedVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return accountNeedVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (accountNeedVerify != null) {
      return accountNeedVerify(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationAccountNeedVerify implements AuthenticationState {
  const factory _AuthenticationAccountNeedVerify() =
      _$AuthenticationAccountNeedVerifyImpl;
}

/// @nodoc
abstract class _$$AuthenticationLoadingSignUpImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingSignUpImplCopyWith(
    _$AuthenticationLoadingSignUpImpl value,
    $Res Function(_$AuthenticationLoadingSignUpImpl) then,
  ) = __$$AuthenticationLoadingSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingSignUpImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationLoadingSignUpImpl
        >
    implements _$$AuthenticationLoadingSignUpImplCopyWith<$Res> {
  __$$AuthenticationLoadingSignUpImplCopyWithImpl(
    _$AuthenticationLoadingSignUpImpl _value,
    $Res Function(_$AuthenticationLoadingSignUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingSignUpImpl
    implements _AuthenticationLoadingSignUp {
  const _$AuthenticationLoadingSignUpImpl();

  @override
  String toString() {
    return 'AuthenticationState.loadingSignUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return loadingSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return loadingSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingSignUp != null) {
      return loadingSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return loadingSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return loadingSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingSignUp != null) {
      return loadingSignUp(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoadingSignUp implements AuthenticationState {
  const factory _AuthenticationLoadingSignUp() =
      _$AuthenticationLoadingSignUpImpl;
}

/// @nodoc
abstract class _$$AuthenticationSignUpSucceedImplCopyWith<$Res> {
  factory _$$AuthenticationSignUpSucceedImplCopyWith(
    _$AuthenticationSignUpSucceedImpl value,
    $Res Function(_$AuthenticationSignUpSucceedImpl) then,
  ) = __$$AuthenticationSignUpSucceedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationSignUpSucceedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationSignUpSucceedImpl
        >
    implements _$$AuthenticationSignUpSucceedImplCopyWith<$Res> {
  __$$AuthenticationSignUpSucceedImplCopyWithImpl(
    _$AuthenticationSignUpSucceedImpl _value,
    $Res Function(_$AuthenticationSignUpSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationSignUpSucceedImpl
    implements _AuthenticationSignUpSucceed {
  const _$AuthenticationSignUpSucceedImpl();

  @override
  String toString() {
    return 'AuthenticationState.signUpSucceed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignUpSucceedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return signUpSucceed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return signUpSucceed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signUpSucceed != null) {
      return signUpSucceed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return signUpSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return signUpSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signUpSucceed != null) {
      return signUpSucceed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSignUpSucceed implements AuthenticationState {
  const factory _AuthenticationSignUpSucceed() =
      _$AuthenticationSignUpSucceedImpl;
}

/// @nodoc
abstract class _$$AuthenticationSignUpFailedImplCopyWith<$Res> {
  factory _$$AuthenticationSignUpFailedImplCopyWith(
    _$AuthenticationSignUpFailedImpl value,
    $Res Function(_$AuthenticationSignUpFailedImpl) then,
  ) = __$$AuthenticationSignUpFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$AuthenticationSignUpFailedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationSignUpFailedImpl
        >
    implements _$$AuthenticationSignUpFailedImplCopyWith<$Res> {
  __$$AuthenticationSignUpFailedImplCopyWithImpl(
    _$AuthenticationSignUpFailedImpl _value,
    $Res Function(_$AuthenticationSignUpFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$AuthenticationSignUpFailedImpl(
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

class _$AuthenticationSignUpFailedImpl implements _AuthenticationSignUpFailed {
  const _$AuthenticationSignUpFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'AuthenticationState.signUpFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignUpFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignUpFailedImplCopyWith<_$AuthenticationSignUpFailedImpl>
  get copyWith => __$$AuthenticationSignUpFailedImplCopyWithImpl<
    _$AuthenticationSignUpFailedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return signUpFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return signUpFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return signUpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return signUpFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSignUpFailed implements AuthenticationState {
  const factory _AuthenticationSignUpFailed({
    final GeneralException? generalException,
  }) = _$AuthenticationSignUpFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSignUpFailedImplCopyWith<_$AuthenticationSignUpFailedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLoadingVerifyAccountImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingVerifyAccountImplCopyWith(
    _$AuthenticationLoadingVerifyAccountImpl value,
    $Res Function(_$AuthenticationLoadingVerifyAccountImpl) then,
  ) = __$$AuthenticationLoadingVerifyAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingVerifyAccountImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationLoadingVerifyAccountImpl
        >
    implements _$$AuthenticationLoadingVerifyAccountImplCopyWith<$Res> {
  __$$AuthenticationLoadingVerifyAccountImplCopyWithImpl(
    _$AuthenticationLoadingVerifyAccountImpl _value,
    $Res Function(_$AuthenticationLoadingVerifyAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingVerifyAccountImpl
    implements _AuthenticationLoadingVerifyAccount {
  const _$AuthenticationLoadingVerifyAccountImpl();

  @override
  String toString() {
    return 'AuthenticationState.loadingVerifyAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingVerifyAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return loadingVerifyAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return loadingVerifyAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingVerifyAccount != null) {
      return loadingVerifyAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return loadingVerifyAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return loadingVerifyAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingVerifyAccount != null) {
      return loadingVerifyAccount(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoadingVerifyAccount
    implements AuthenticationState {
  const factory _AuthenticationLoadingVerifyAccount() =
      _$AuthenticationLoadingVerifyAccountImpl;
}

/// @nodoc
abstract class _$$AuthenticationVerifyAccountSucceedImplCopyWith<$Res> {
  factory _$$AuthenticationVerifyAccountSucceedImplCopyWith(
    _$AuthenticationVerifyAccountSucceedImpl value,
    $Res Function(_$AuthenticationVerifyAccountSucceedImpl) then,
  ) = __$$AuthenticationVerifyAccountSucceedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationVerifyAccountSucceedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationVerifyAccountSucceedImpl
        >
    implements _$$AuthenticationVerifyAccountSucceedImplCopyWith<$Res> {
  __$$AuthenticationVerifyAccountSucceedImplCopyWithImpl(
    _$AuthenticationVerifyAccountSucceedImpl _value,
    $Res Function(_$AuthenticationVerifyAccountSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationVerifyAccountSucceedImpl
    implements _AuthenticationVerifyAccountSucceed {
  const _$AuthenticationVerifyAccountSucceedImpl();

  @override
  String toString() {
    return 'AuthenticationState.verifyAccountSucceed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationVerifyAccountSucceedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return verifyAccountSucceed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return verifyAccountSucceed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (verifyAccountSucceed != null) {
      return verifyAccountSucceed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return verifyAccountSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return verifyAccountSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (verifyAccountSucceed != null) {
      return verifyAccountSucceed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationVerifyAccountSucceed
    implements AuthenticationState {
  const factory _AuthenticationVerifyAccountSucceed() =
      _$AuthenticationVerifyAccountSucceedImpl;
}

/// @nodoc
abstract class _$$AuthenticationRedirectToResetPasswordPageImplCopyWith<$Res> {
  factory _$$AuthenticationRedirectToResetPasswordPageImplCopyWith(
    _$AuthenticationRedirectToResetPasswordPageImpl value,
    $Res Function(_$AuthenticationRedirectToResetPasswordPageImpl) then,
  ) = __$$AuthenticationRedirectToResetPasswordPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationRedirectToResetPasswordPageImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationRedirectToResetPasswordPageImpl
        >
    implements _$$AuthenticationRedirectToResetPasswordPageImplCopyWith<$Res> {
  __$$AuthenticationRedirectToResetPasswordPageImplCopyWithImpl(
    _$AuthenticationRedirectToResetPasswordPageImpl _value,
    $Res Function(_$AuthenticationRedirectToResetPasswordPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationRedirectToResetPasswordPageImpl
    implements _AuthenticationRedirectToResetPasswordPage {
  const _$AuthenticationRedirectToResetPasswordPageImpl();

  @override
  String toString() {
    return 'AuthenticationState.redirectToResetPasswordPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRedirectToResetPasswordPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return redirectToResetPasswordPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return redirectToResetPasswordPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (redirectToResetPasswordPage != null) {
      return redirectToResetPasswordPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return redirectToResetPasswordPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return redirectToResetPasswordPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (redirectToResetPasswordPage != null) {
      return redirectToResetPasswordPage(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationRedirectToResetPasswordPage
    implements AuthenticationState {
  const factory _AuthenticationRedirectToResetPasswordPage() =
      _$AuthenticationRedirectToResetPasswordPageImpl;
}

/// @nodoc
abstract class _$$AuthenticationRedirectToProofIdentityPageImplCopyWith<$Res> {
  factory _$$AuthenticationRedirectToProofIdentityPageImplCopyWith(
    _$AuthenticationRedirectToProofIdentityPageImpl value,
    $Res Function(_$AuthenticationRedirectToProofIdentityPageImpl) then,
  ) = __$$AuthenticationRedirectToProofIdentityPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationRedirectToProofIdentityPageImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationRedirectToProofIdentityPageImpl
        >
    implements _$$AuthenticationRedirectToProofIdentityPageImplCopyWith<$Res> {
  __$$AuthenticationRedirectToProofIdentityPageImplCopyWithImpl(
    _$AuthenticationRedirectToProofIdentityPageImpl _value,
    $Res Function(_$AuthenticationRedirectToProofIdentityPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationRedirectToProofIdentityPageImpl
    implements _AuthenticationRedirectToProofIdentityPage {
  const _$AuthenticationRedirectToProofIdentityPageImpl();

  @override
  String toString() {
    return 'AuthenticationState.redirectToProofIdentityPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRedirectToProofIdentityPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return redirectToProofIdentityPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return redirectToProofIdentityPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (redirectToProofIdentityPage != null) {
      return redirectToProofIdentityPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return redirectToProofIdentityPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return redirectToProofIdentityPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (redirectToProofIdentityPage != null) {
      return redirectToProofIdentityPage(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationRedirectToProofIdentityPage
    implements AuthenticationState {
  const factory _AuthenticationRedirectToProofIdentityPage() =
      _$AuthenticationRedirectToProofIdentityPageImpl;
}

/// @nodoc
abstract class _$$AuthenticationRedirectToProofIdentityPageFromLoginImplCopyWith<
  $Res
> {
  factory _$$AuthenticationRedirectToProofIdentityPageFromLoginImplCopyWith(
    _$AuthenticationRedirectToProofIdentityPageFromLoginImpl value,
    $Res Function(_$AuthenticationRedirectToProofIdentityPageFromLoginImpl)
    then,
  ) =
      __$$AuthenticationRedirectToProofIdentityPageFromLoginImplCopyWithImpl<
        $Res
      >;
}

/// @nodoc
class __$$AuthenticationRedirectToProofIdentityPageFromLoginImplCopyWithImpl<
  $Res
>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationRedirectToProofIdentityPageFromLoginImpl
        >
    implements
        _$$AuthenticationRedirectToProofIdentityPageFromLoginImplCopyWith<
          $Res
        > {
  __$$AuthenticationRedirectToProofIdentityPageFromLoginImplCopyWithImpl(
    _$AuthenticationRedirectToProofIdentityPageFromLoginImpl _value,
    $Res Function(_$AuthenticationRedirectToProofIdentityPageFromLoginImpl)
    _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationRedirectToProofIdentityPageFromLoginImpl
    implements _AuthenticationRedirectToProofIdentityPageFromLogin {
  const _$AuthenticationRedirectToProofIdentityPageFromLoginImpl();

  @override
  String toString() {
    return 'AuthenticationState.redirectToProofIdentityPageFromLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRedirectToProofIdentityPageFromLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return redirectToProofIdentityPageFromLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return redirectToProofIdentityPageFromLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (redirectToProofIdentityPageFromLogin != null) {
      return redirectToProofIdentityPageFromLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return redirectToProofIdentityPageFromLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return redirectToProofIdentityPageFromLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (redirectToProofIdentityPageFromLogin != null) {
      return redirectToProofIdentityPageFromLogin(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationRedirectToProofIdentityPageFromLogin
    implements AuthenticationState {
  const factory _AuthenticationRedirectToProofIdentityPageFromLogin() =
      _$AuthenticationRedirectToProofIdentityPageFromLoginImpl;
}

/// @nodoc
abstract class _$$AuthenticationVerifyAccountFailedImplCopyWith<$Res> {
  factory _$$AuthenticationVerifyAccountFailedImplCopyWith(
    _$AuthenticationVerifyAccountFailedImpl value,
    $Res Function(_$AuthenticationVerifyAccountFailedImpl) then,
  ) = __$$AuthenticationVerifyAccountFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$AuthenticationVerifyAccountFailedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationVerifyAccountFailedImpl
        >
    implements _$$AuthenticationVerifyAccountFailedImplCopyWith<$Res> {
  __$$AuthenticationVerifyAccountFailedImplCopyWithImpl(
    _$AuthenticationVerifyAccountFailedImpl _value,
    $Res Function(_$AuthenticationVerifyAccountFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$AuthenticationVerifyAccountFailedImpl(
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

class _$AuthenticationVerifyAccountFailedImpl
    implements _AuthenticationVerifyAccountFailed {
  const _$AuthenticationVerifyAccountFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'AuthenticationState.verifyAccountFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationVerifyAccountFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationVerifyAccountFailedImplCopyWith<
    _$AuthenticationVerifyAccountFailedImpl
  >
  get copyWith => __$$AuthenticationVerifyAccountFailedImplCopyWithImpl<
    _$AuthenticationVerifyAccountFailedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return verifyAccountFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return verifyAccountFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (verifyAccountFailed != null) {
      return verifyAccountFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return verifyAccountFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return verifyAccountFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (verifyAccountFailed != null) {
      return verifyAccountFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationVerifyAccountFailed
    implements AuthenticationState {
  const factory _AuthenticationVerifyAccountFailed({
    final GeneralException? generalException,
  }) = _$AuthenticationVerifyAccountFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationVerifyAccountFailedImplCopyWith<
    _$AuthenticationVerifyAccountFailedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLoadingResendVerificationCodeImplCopyWith<
  $Res
> {
  factory _$$AuthenticationLoadingResendVerificationCodeImplCopyWith(
    _$AuthenticationLoadingResendVerificationCodeImpl value,
    $Res Function(_$AuthenticationLoadingResendVerificationCodeImpl) then,
  ) = __$$AuthenticationLoadingResendVerificationCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingResendVerificationCodeImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationLoadingResendVerificationCodeImpl
        >
    implements
        _$$AuthenticationLoadingResendVerificationCodeImplCopyWith<$Res> {
  __$$AuthenticationLoadingResendVerificationCodeImplCopyWithImpl(
    _$AuthenticationLoadingResendVerificationCodeImpl _value,
    $Res Function(_$AuthenticationLoadingResendVerificationCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingResendVerificationCodeImpl
    implements _AuthenticationLoadingResendVerificationCode {
  const _$AuthenticationLoadingResendVerificationCodeImpl();

  @override
  String toString() {
    return 'AuthenticationState.loadingResendVerificationCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingResendVerificationCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return loadingResendVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return loadingResendVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingResendVerificationCode != null) {
      return loadingResendVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return loadingResendVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return loadingResendVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingResendVerificationCode != null) {
      return loadingResendVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoadingResendVerificationCode
    implements AuthenticationState {
  const factory _AuthenticationLoadingResendVerificationCode() =
      _$AuthenticationLoadingResendVerificationCodeImpl;
}

/// @nodoc
abstract class _$$AuthenticationResendVerificationCodeSucceedImplCopyWith<
  $Res
> {
  factory _$$AuthenticationResendVerificationCodeSucceedImplCopyWith(
    _$AuthenticationResendVerificationCodeSucceedImpl value,
    $Res Function(_$AuthenticationResendVerificationCodeSucceedImpl) then,
  ) = __$$AuthenticationResendVerificationCodeSucceedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthenticationResendVerificationCodeSucceedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationResendVerificationCodeSucceedImpl
        >
    implements
        _$$AuthenticationResendVerificationCodeSucceedImplCopyWith<$Res> {
  __$$AuthenticationResendVerificationCodeSucceedImplCopyWithImpl(
    _$AuthenticationResendVerificationCodeSucceedImpl _value,
    $Res Function(_$AuthenticationResendVerificationCodeSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$AuthenticationResendVerificationCodeSucceedImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$AuthenticationResendVerificationCodeSucceedImpl
    implements _AuthenticationResendVerificationCodeSucceed {
  const _$AuthenticationResendVerificationCodeSucceedImpl({
    this.message = null,
  });

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'AuthenticationState.resendVerificationCodeSucceed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResendVerificationCodeSucceedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResendVerificationCodeSucceedImplCopyWith<
    _$AuthenticationResendVerificationCodeSucceedImpl
  >
  get copyWith =>
      __$$AuthenticationResendVerificationCodeSucceedImplCopyWithImpl<
        _$AuthenticationResendVerificationCodeSucceedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return resendVerificationCodeSucceed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return resendVerificationCodeSucceed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resendVerificationCodeSucceed != null) {
      return resendVerificationCodeSucceed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return resendVerificationCodeSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return resendVerificationCodeSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resendVerificationCodeSucceed != null) {
      return resendVerificationCodeSucceed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationResendVerificationCodeSucceed
    implements AuthenticationState {
  const factory _AuthenticationResendVerificationCodeSucceed({
    final String? message,
  }) = _$AuthenticationResendVerificationCodeSucceedImpl;

  String? get message;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationResendVerificationCodeSucceedImplCopyWith<
    _$AuthenticationResendVerificationCodeSucceedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationResendVerificationCodeFailedImplCopyWith<$Res> {
  factory _$$AuthenticationResendVerificationCodeFailedImplCopyWith(
    _$AuthenticationResendVerificationCodeFailedImpl value,
    $Res Function(_$AuthenticationResendVerificationCodeFailedImpl) then,
  ) = __$$AuthenticationResendVerificationCodeFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$AuthenticationResendVerificationCodeFailedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationResendVerificationCodeFailedImpl
        >
    implements _$$AuthenticationResendVerificationCodeFailedImplCopyWith<$Res> {
  __$$AuthenticationResendVerificationCodeFailedImplCopyWithImpl(
    _$AuthenticationResendVerificationCodeFailedImpl _value,
    $Res Function(_$AuthenticationResendVerificationCodeFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$AuthenticationResendVerificationCodeFailedImpl(
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

class _$AuthenticationResendVerificationCodeFailedImpl
    implements _AuthenticationResendVerificationCodeFailed {
  const _$AuthenticationResendVerificationCodeFailedImpl({
    this.generalException = null,
  });

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'AuthenticationState.resendVerificationCodeFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResendVerificationCodeFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResendVerificationCodeFailedImplCopyWith<
    _$AuthenticationResendVerificationCodeFailedImpl
  >
  get copyWith =>
      __$$AuthenticationResendVerificationCodeFailedImplCopyWithImpl<
        _$AuthenticationResendVerificationCodeFailedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return resendVerificationCodeFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return resendVerificationCodeFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resendVerificationCodeFailed != null) {
      return resendVerificationCodeFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return resendVerificationCodeFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return resendVerificationCodeFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resendVerificationCodeFailed != null) {
      return resendVerificationCodeFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationResendVerificationCodeFailed
    implements AuthenticationState {
  const factory _AuthenticationResendVerificationCodeFailed({
    final GeneralException? generalException,
  }) = _$AuthenticationResendVerificationCodeFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationResendVerificationCodeFailedImplCopyWith<
    _$AuthenticationResendVerificationCodeFailedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationRemainingTimeForResendImplCopyWith<$Res> {
  factory _$$AuthenticationRemainingTimeForResendImplCopyWith(
    _$AuthenticationRemainingTimeForResendImpl value,
    $Res Function(_$AuthenticationRemainingTimeForResendImpl) then,
  ) = __$$AuthenticationRemainingTimeForResendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? remainingTime});
}

/// @nodoc
class __$$AuthenticationRemainingTimeForResendImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationRemainingTimeForResendImpl
        >
    implements _$$AuthenticationRemainingTimeForResendImplCopyWith<$Res> {
  __$$AuthenticationRemainingTimeForResendImplCopyWithImpl(
    _$AuthenticationRemainingTimeForResendImpl _value,
    $Res Function(_$AuthenticationRemainingTimeForResendImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? remainingTime = freezed}) {
    return _then(
      _$AuthenticationRemainingTimeForResendImpl(
        remainingTime:
            freezed == remainingTime
                ? _value.remainingTime
                : remainingTime // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$AuthenticationRemainingTimeForResendImpl
    implements _AuthenticationRemainingTimeForResend {
  const _$AuthenticationRemainingTimeForResendImpl({this.remainingTime = 0});

  @override
  @JsonKey()
  final int? remainingTime;

  @override
  String toString() {
    return 'AuthenticationState.remainingTimeForResend(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRemainingTimeForResendImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingTime);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRemainingTimeForResendImplCopyWith<
    _$AuthenticationRemainingTimeForResendImpl
  >
  get copyWith => __$$AuthenticationRemainingTimeForResendImplCopyWithImpl<
    _$AuthenticationRemainingTimeForResendImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return remainingTimeForResend(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return remainingTimeForResend?.call(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (remainingTimeForResend != null) {
      return remainingTimeForResend(remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return remainingTimeForResend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return remainingTimeForResend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (remainingTimeForResend != null) {
      return remainingTimeForResend(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationRemainingTimeForResend
    implements AuthenticationState {
  const factory _AuthenticationRemainingTimeForResend({
    final int? remainingTime,
  }) = _$AuthenticationRemainingTimeForResendImpl;

  int? get remainingTime;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationRemainingTimeForResendImplCopyWith<
    _$AuthenticationRemainingTimeForResendImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLoadingResetPasswordImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingResetPasswordImplCopyWith(
    _$AuthenticationLoadingResetPasswordImpl value,
    $Res Function(_$AuthenticationLoadingResetPasswordImpl) then,
  ) = __$$AuthenticationLoadingResetPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingResetPasswordImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationLoadingResetPasswordImpl
        >
    implements _$$AuthenticationLoadingResetPasswordImplCopyWith<$Res> {
  __$$AuthenticationLoadingResetPasswordImplCopyWithImpl(
    _$AuthenticationLoadingResetPasswordImpl _value,
    $Res Function(_$AuthenticationLoadingResetPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingResetPasswordImpl
    implements _AuthenticationLoadingResetPassword {
  const _$AuthenticationLoadingResetPasswordImpl();

  @override
  String toString() {
    return 'AuthenticationState.loadingResetPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingResetPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return loadingResetPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return loadingResetPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingResetPassword != null) {
      return loadingResetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return loadingResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return loadingResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingResetPassword != null) {
      return loadingResetPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoadingResetPassword
    implements AuthenticationState {
  const factory _AuthenticationLoadingResetPassword() =
      _$AuthenticationLoadingResetPasswordImpl;
}

/// @nodoc
abstract class _$$AuthenticationResetPasswordSucceedImplCopyWith<$Res> {
  factory _$$AuthenticationResetPasswordSucceedImplCopyWith(
    _$AuthenticationResetPasswordSucceedImpl value,
    $Res Function(_$AuthenticationResetPasswordSucceedImpl) then,
  ) = __$$AuthenticationResetPasswordSucceedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthenticationResetPasswordSucceedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationResetPasswordSucceedImpl
        >
    implements _$$AuthenticationResetPasswordSucceedImplCopyWith<$Res> {
  __$$AuthenticationResetPasswordSucceedImplCopyWithImpl(
    _$AuthenticationResetPasswordSucceedImpl _value,
    $Res Function(_$AuthenticationResetPasswordSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$AuthenticationResetPasswordSucceedImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$AuthenticationResetPasswordSucceedImpl
    implements _AuthenticationResetPasswordSucceed {
  const _$AuthenticationResetPasswordSucceedImpl({this.message = null});

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'AuthenticationState.resetPasswordSucceed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResetPasswordSucceedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResetPasswordSucceedImplCopyWith<
    _$AuthenticationResetPasswordSucceedImpl
  >
  get copyWith => __$$AuthenticationResetPasswordSucceedImplCopyWithImpl<
    _$AuthenticationResetPasswordSucceedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return resetPasswordSucceed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return resetPasswordSucceed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordSucceed != null) {
      return resetPasswordSucceed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return resetPasswordSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return resetPasswordSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordSucceed != null) {
      return resetPasswordSucceed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationResetPasswordSucceed
    implements AuthenticationState {
  const factory _AuthenticationResetPasswordSucceed({final String? message}) =
      _$AuthenticationResetPasswordSucceedImpl;

  String? get message;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationResetPasswordSucceedImplCopyWith<
    _$AuthenticationResetPasswordSucceedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationResetPasswordFailedImplCopyWith<$Res> {
  factory _$$AuthenticationResetPasswordFailedImplCopyWith(
    _$AuthenticationResetPasswordFailedImpl value,
    $Res Function(_$AuthenticationResetPasswordFailedImpl) then,
  ) = __$$AuthenticationResetPasswordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$AuthenticationResetPasswordFailedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationResetPasswordFailedImpl
        >
    implements _$$AuthenticationResetPasswordFailedImplCopyWith<$Res> {
  __$$AuthenticationResetPasswordFailedImplCopyWithImpl(
    _$AuthenticationResetPasswordFailedImpl _value,
    $Res Function(_$AuthenticationResetPasswordFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$AuthenticationResetPasswordFailedImpl(
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

class _$AuthenticationResetPasswordFailedImpl
    implements _AuthenticationResetPasswordFailed {
  const _$AuthenticationResetPasswordFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'AuthenticationState.resetPasswordFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResetPasswordFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResetPasswordFailedImplCopyWith<
    _$AuthenticationResetPasswordFailedImpl
  >
  get copyWith => __$$AuthenticationResetPasswordFailedImplCopyWithImpl<
    _$AuthenticationResetPasswordFailedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return resetPasswordFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return resetPasswordFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordFailed != null) {
      return resetPasswordFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return resetPasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return resetPasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (resetPasswordFailed != null) {
      return resetPasswordFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationResetPasswordFailed
    implements AuthenticationState {
  const factory _AuthenticationResetPasswordFailed({
    final GeneralException? generalException,
  }) = _$AuthenticationResetPasswordFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationResetPasswordFailedImplCopyWith<
    _$AuthenticationResetPasswordFailedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLoadingSpecialtiesImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingSpecialtiesImplCopyWith(
    _$AuthenticationLoadingSpecialtiesImpl value,
    $Res Function(_$AuthenticationLoadingSpecialtiesImpl) then,
  ) = __$$AuthenticationLoadingSpecialtiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingSpecialtiesImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationLoadingSpecialtiesImpl
        >
    implements _$$AuthenticationLoadingSpecialtiesImplCopyWith<$Res> {
  __$$AuthenticationLoadingSpecialtiesImplCopyWithImpl(
    _$AuthenticationLoadingSpecialtiesImpl _value,
    $Res Function(_$AuthenticationLoadingSpecialtiesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingSpecialtiesImpl
    implements _AuthenticationLoadingSpecialties {
  const _$AuthenticationLoadingSpecialtiesImpl();

  @override
  String toString() {
    return 'AuthenticationState.loadingSpecialties()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingSpecialtiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return loadingSpecialties();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return loadingSpecialties?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingSpecialties != null) {
      return loadingSpecialties();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return loadingSpecialties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return loadingSpecialties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (loadingSpecialties != null) {
      return loadingSpecialties(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoadingSpecialties
    implements AuthenticationState {
  const factory _AuthenticationLoadingSpecialties() =
      _$AuthenticationLoadingSpecialtiesImpl;
}

/// @nodoc
abstract class _$$AuthenticationSpecialtiesSucceedImplCopyWith<$Res> {
  factory _$$AuthenticationSpecialtiesSucceedImplCopyWith(
    _$AuthenticationSpecialtiesSucceedImpl value,
    $Res Function(_$AuthenticationSpecialtiesSucceedImpl) then,
  ) = __$$AuthenticationSpecialtiesSucceedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SpecialtyResult> specialties});
}

/// @nodoc
class __$$AuthenticationSpecialtiesSucceedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationSpecialtiesSucceedImpl
        >
    implements _$$AuthenticationSpecialtiesSucceedImplCopyWith<$Res> {
  __$$AuthenticationSpecialtiesSucceedImplCopyWithImpl(
    _$AuthenticationSpecialtiesSucceedImpl _value,
    $Res Function(_$AuthenticationSpecialtiesSucceedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? specialties = null}) {
    return _then(
      _$AuthenticationSpecialtiesSucceedImpl(
        specialties:
            null == specialties
                ? _value._specialties
                : specialties // ignore: cast_nullable_to_non_nullable
                    as List<SpecialtyResult>,
      ),
    );
  }
}

/// @nodoc

class _$AuthenticationSpecialtiesSucceedImpl
    implements _AuthenticationSpecialtiesSucceed {
  const _$AuthenticationSpecialtiesSucceedImpl({
    final List<SpecialtyResult> specialties = const <SpecialtyResult>[],
  }) : _specialties = specialties;

  final List<SpecialtyResult> _specialties;
  @override
  @JsonKey()
  List<SpecialtyResult> get specialties {
    if (_specialties is EqualUnmodifiableListView) return _specialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialties);
  }

  @override
  String toString() {
    return 'AuthenticationState.specialtiesSucceed(specialties: $specialties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSpecialtiesSucceedImpl &&
            const DeepCollectionEquality().equals(
              other._specialties,
              _specialties,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_specialties),
  );

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSpecialtiesSucceedImplCopyWith<
    _$AuthenticationSpecialtiesSucceedImpl
  >
  get copyWith => __$$AuthenticationSpecialtiesSucceedImplCopyWithImpl<
    _$AuthenticationSpecialtiesSucceedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return specialtiesSucceed(specialties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return specialtiesSucceed?.call(specialties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (specialtiesSucceed != null) {
      return specialtiesSucceed(specialties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return specialtiesSucceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return specialtiesSucceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (specialtiesSucceed != null) {
      return specialtiesSucceed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSpecialtiesSucceed
    implements AuthenticationState {
  const factory _AuthenticationSpecialtiesSucceed({
    final List<SpecialtyResult> specialties,
  }) = _$AuthenticationSpecialtiesSucceedImpl;

  List<SpecialtyResult> get specialties;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSpecialtiesSucceedImplCopyWith<
    _$AuthenticationSpecialtiesSucceedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSpecialtiesFailedImplCopyWith<$Res> {
  factory _$$AuthenticationSpecialtiesFailedImplCopyWith(
    _$AuthenticationSpecialtiesFailedImpl value,
    $Res Function(_$AuthenticationSpecialtiesFailedImpl) then,
  ) = __$$AuthenticationSpecialtiesFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneralException? generalException});
}

/// @nodoc
class __$$AuthenticationSpecialtiesFailedImplCopyWithImpl<$Res>
    extends
        _$AuthenticationStateCopyWithImpl<
          $Res,
          _$AuthenticationSpecialtiesFailedImpl
        >
    implements _$$AuthenticationSpecialtiesFailedImplCopyWith<$Res> {
  __$$AuthenticationSpecialtiesFailedImplCopyWithImpl(
    _$AuthenticationSpecialtiesFailedImpl _value,
    $Res Function(_$AuthenticationSpecialtiesFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? generalException = freezed}) {
    return _then(
      _$AuthenticationSpecialtiesFailedImpl(
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

class _$AuthenticationSpecialtiesFailedImpl
    implements _AuthenticationSpecialtiesFailed {
  const _$AuthenticationSpecialtiesFailedImpl({this.generalException = null});

  @override
  @JsonKey()
  final GeneralException? generalException;

  @override
  String toString() {
    return 'AuthenticationState.specialtiesFailed(generalException: $generalException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSpecialtiesFailedImpl &&
            (identical(other.generalException, generalException) ||
                other.generalException == generalException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalException);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSpecialtiesFailedImplCopyWith<
    _$AuthenticationSpecialtiesFailedImpl
  >
  get copyWith => __$$AuthenticationSpecialtiesFailedImplCopyWithImpl<
    _$AuthenticationSpecialtiesFailedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingSignIn,
    required TResult Function() signInSucceed,
    required TResult Function(GeneralException? generalException) signInFailed,
    required TResult Function() accountNeedVerify,
    required TResult Function() loadingSignUp,
    required TResult Function() signUpSucceed,
    required TResult Function(GeneralException? generalException) signUpFailed,
    required TResult Function() loadingVerifyAccount,
    required TResult Function() verifyAccountSucceed,
    required TResult Function() redirectToResetPasswordPage,
    required TResult Function() redirectToProofIdentityPage,
    required TResult Function() redirectToProofIdentityPageFromLogin,
    required TResult Function(GeneralException? generalException)
    verifyAccountFailed,
    required TResult Function() loadingResendVerificationCode,
    required TResult Function(String? message) resendVerificationCodeSucceed,
    required TResult Function(GeneralException? generalException)
    resendVerificationCodeFailed,
    required TResult Function(int? remainingTime) remainingTimeForResend,
    required TResult Function() loadingResetPassword,
    required TResult Function(String? message) resetPasswordSucceed,
    required TResult Function(GeneralException? generalException)
    resetPasswordFailed,
    required TResult Function() loadingSpecialties,
    required TResult Function(List<SpecialtyResult> specialties)
    specialtiesSucceed,
    required TResult Function(GeneralException? generalException)
    specialtiesFailed,
  }) {
    return specialtiesFailed(generalException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingSignIn,
    TResult? Function()? signInSucceed,
    TResult? Function(GeneralException? generalException)? signInFailed,
    TResult? Function()? accountNeedVerify,
    TResult? Function()? loadingSignUp,
    TResult? Function()? signUpSucceed,
    TResult? Function(GeneralException? generalException)? signUpFailed,
    TResult? Function()? loadingVerifyAccount,
    TResult? Function()? verifyAccountSucceed,
    TResult? Function()? redirectToResetPasswordPage,
    TResult? Function()? redirectToProofIdentityPage,
    TResult? Function()? redirectToProofIdentityPageFromLogin,
    TResult? Function(GeneralException? generalException)? verifyAccountFailed,
    TResult? Function()? loadingResendVerificationCode,
    TResult? Function(String? message)? resendVerificationCodeSucceed,
    TResult? Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult? Function(int? remainingTime)? remainingTimeForResend,
    TResult? Function()? loadingResetPassword,
    TResult? Function(String? message)? resetPasswordSucceed,
    TResult? Function(GeneralException? generalException)? resetPasswordFailed,
    TResult? Function()? loadingSpecialties,
    TResult? Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult? Function(GeneralException? generalException)? specialtiesFailed,
  }) {
    return specialtiesFailed?.call(generalException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingSignIn,
    TResult Function()? signInSucceed,
    TResult Function(GeneralException? generalException)? signInFailed,
    TResult Function()? accountNeedVerify,
    TResult Function()? loadingSignUp,
    TResult Function()? signUpSucceed,
    TResult Function(GeneralException? generalException)? signUpFailed,
    TResult Function()? loadingVerifyAccount,
    TResult Function()? verifyAccountSucceed,
    TResult Function()? redirectToResetPasswordPage,
    TResult Function()? redirectToProofIdentityPage,
    TResult Function()? redirectToProofIdentityPageFromLogin,
    TResult Function(GeneralException? generalException)? verifyAccountFailed,
    TResult Function()? loadingResendVerificationCode,
    TResult Function(String? message)? resendVerificationCodeSucceed,
    TResult Function(GeneralException? generalException)?
    resendVerificationCodeFailed,
    TResult Function(int? remainingTime)? remainingTimeForResend,
    TResult Function()? loadingResetPassword,
    TResult Function(String? message)? resetPasswordSucceed,
    TResult Function(GeneralException? generalException)? resetPasswordFailed,
    TResult Function()? loadingSpecialties,
    TResult Function(List<SpecialtyResult> specialties)? specialtiesSucceed,
    TResult Function(GeneralException? generalException)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (specialtiesFailed != null) {
      return specialtiesFailed(generalException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationInitial value) initial,
    required TResult Function(_AuthenticationLoadingSignIn value) loadingSignIn,
    required TResult Function(_AuthenticationSignInSucceed value) signInSucceed,
    required TResult Function(_AuthenticationSignInFailed value) signInFailed,
    required TResult Function(_AuthenticationAccountNeedVerify value)
    accountNeedVerify,
    required TResult Function(_AuthenticationLoadingSignUp value) loadingSignUp,
    required TResult Function(_AuthenticationSignUpSucceed value) signUpSucceed,
    required TResult Function(_AuthenticationSignUpFailed value) signUpFailed,
    required TResult Function(_AuthenticationLoadingVerifyAccount value)
    loadingVerifyAccount,
    required TResult Function(_AuthenticationVerifyAccountSucceed value)
    verifyAccountSucceed,
    required TResult Function(_AuthenticationRedirectToResetPasswordPage value)
    redirectToResetPasswordPage,
    required TResult Function(_AuthenticationRedirectToProofIdentityPage value)
    redirectToProofIdentityPage,
    required TResult Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )
    redirectToProofIdentityPageFromLogin,
    required TResult Function(_AuthenticationVerifyAccountFailed value)
    verifyAccountFailed,
    required TResult Function(
      _AuthenticationLoadingResendVerificationCode value,
    )
    loadingResendVerificationCode,
    required TResult Function(
      _AuthenticationResendVerificationCodeSucceed value,
    )
    resendVerificationCodeSucceed,
    required TResult Function(_AuthenticationResendVerificationCodeFailed value)
    resendVerificationCodeFailed,
    required TResult Function(_AuthenticationRemainingTimeForResend value)
    remainingTimeForResend,
    required TResult Function(_AuthenticationLoadingResetPassword value)
    loadingResetPassword,
    required TResult Function(_AuthenticationResetPasswordSucceed value)
    resetPasswordSucceed,
    required TResult Function(_AuthenticationResetPasswordFailed value)
    resetPasswordFailed,
    required TResult Function(_AuthenticationLoadingSpecialties value)
    loadingSpecialties,
    required TResult Function(_AuthenticationSpecialtiesSucceed value)
    specialtiesSucceed,
    required TResult Function(_AuthenticationSpecialtiesFailed value)
    specialtiesFailed,
  }) {
    return specialtiesFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationInitial value)? initial,
    TResult? Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult? Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult? Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult? Function(_AuthenticationAccountNeedVerify value)?
    accountNeedVerify,
    TResult? Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult? Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult? Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult? Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult? Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult? Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult? Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult? Function(
      _AuthenticationRedirectToProofIdentityPageFromLogin value,
    )?
    redirectToProofIdentityPageFromLogin,
    TResult? Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult? Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult? Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult? Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult? Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult? Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult? Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult? Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult? Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult? Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult? Function(_AuthenticationSpecialtiesFailed value)?
    specialtiesFailed,
  }) {
    return specialtiesFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationInitial value)? initial,
    TResult Function(_AuthenticationLoadingSignIn value)? loadingSignIn,
    TResult Function(_AuthenticationSignInSucceed value)? signInSucceed,
    TResult Function(_AuthenticationSignInFailed value)? signInFailed,
    TResult Function(_AuthenticationAccountNeedVerify value)? accountNeedVerify,
    TResult Function(_AuthenticationLoadingSignUp value)? loadingSignUp,
    TResult Function(_AuthenticationSignUpSucceed value)? signUpSucceed,
    TResult Function(_AuthenticationSignUpFailed value)? signUpFailed,
    TResult Function(_AuthenticationLoadingVerifyAccount value)?
    loadingVerifyAccount,
    TResult Function(_AuthenticationVerifyAccountSucceed value)?
    verifyAccountSucceed,
    TResult Function(_AuthenticationRedirectToResetPasswordPage value)?
    redirectToResetPasswordPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPage value)?
    redirectToProofIdentityPage,
    TResult Function(_AuthenticationRedirectToProofIdentityPageFromLogin value)?
    redirectToProofIdentityPageFromLogin,
    TResult Function(_AuthenticationVerifyAccountFailed value)?
    verifyAccountFailed,
    TResult Function(_AuthenticationLoadingResendVerificationCode value)?
    loadingResendVerificationCode,
    TResult Function(_AuthenticationResendVerificationCodeSucceed value)?
    resendVerificationCodeSucceed,
    TResult Function(_AuthenticationResendVerificationCodeFailed value)?
    resendVerificationCodeFailed,
    TResult Function(_AuthenticationRemainingTimeForResend value)?
    remainingTimeForResend,
    TResult Function(_AuthenticationLoadingResetPassword value)?
    loadingResetPassword,
    TResult Function(_AuthenticationResetPasswordSucceed value)?
    resetPasswordSucceed,
    TResult Function(_AuthenticationResetPasswordFailed value)?
    resetPasswordFailed,
    TResult Function(_AuthenticationLoadingSpecialties value)?
    loadingSpecialties,
    TResult Function(_AuthenticationSpecialtiesSucceed value)?
    specialtiesSucceed,
    TResult Function(_AuthenticationSpecialtiesFailed value)? specialtiesFailed,
    required TResult orElse(),
  }) {
    if (specialtiesFailed != null) {
      return specialtiesFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSpecialtiesFailed implements AuthenticationState {
  const factory _AuthenticationSpecialtiesFailed({
    final GeneralException? generalException,
  }) = _$AuthenticationSpecialtiesFailedImpl;

  GeneralException? get generalException;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSpecialtiesFailedImplCopyWith<
    _$AuthenticationSpecialtiesFailedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
