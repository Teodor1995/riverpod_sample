// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomePageViewModelTearOff {
  const _$HomePageViewModelTearOff();

  _HomePageViewModel call(
      {required LockStatus lockStatus,
      required String bodyTextKey,
      required Color bodyTextColor,
      required String actionButtonTextKey,
      bool isLoading = false}) {
    return _HomePageViewModel(
      lockStatus: lockStatus,
      bodyTextKey: bodyTextKey,
      bodyTextColor: bodyTextColor,
      actionButtonTextKey: actionButtonTextKey,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $HomePageViewModel = _$HomePageViewModelTearOff();

/// @nodoc
mixin _$HomePageViewModel {
  LockStatus get lockStatus => throw _privateConstructorUsedError;
  String get bodyTextKey => throw _privateConstructorUsedError;
  Color get bodyTextColor => throw _privateConstructorUsedError;
  String get actionButtonTextKey => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageViewModelCopyWith<HomePageViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageViewModelCopyWith<$Res> {
  factory $HomePageViewModelCopyWith(
          HomePageViewModel value, $Res Function(HomePageViewModel) then) =
      _$HomePageViewModelCopyWithImpl<$Res>;
  $Res call(
      {LockStatus lockStatus,
      String bodyTextKey,
      Color bodyTextColor,
      String actionButtonTextKey,
      bool isLoading});
}

/// @nodoc
class _$HomePageViewModelCopyWithImpl<$Res>
    implements $HomePageViewModelCopyWith<$Res> {
  _$HomePageViewModelCopyWithImpl(this._value, this._then);

  final HomePageViewModel _value;
  // ignore: unused_field
  final $Res Function(HomePageViewModel) _then;

  @override
  $Res call({
    Object? lockStatus = freezed,
    Object? bodyTextKey = freezed,
    Object? bodyTextColor = freezed,
    Object? actionButtonTextKey = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      lockStatus: lockStatus == freezed
          ? _value.lockStatus
          : lockStatus // ignore: cast_nullable_to_non_nullable
              as LockStatus,
      bodyTextKey: bodyTextKey == freezed
          ? _value.bodyTextKey
          : bodyTextKey // ignore: cast_nullable_to_non_nullable
              as String,
      bodyTextColor: bodyTextColor == freezed
          ? _value.bodyTextColor
          : bodyTextColor // ignore: cast_nullable_to_non_nullable
              as Color,
      actionButtonTextKey: actionButtonTextKey == freezed
          ? _value.actionButtonTextKey
          : actionButtonTextKey // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomePageViewModelCopyWith<$Res>
    implements $HomePageViewModelCopyWith<$Res> {
  factory _$HomePageViewModelCopyWith(
          _HomePageViewModel value, $Res Function(_HomePageViewModel) then) =
      __$HomePageViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {LockStatus lockStatus,
      String bodyTextKey,
      Color bodyTextColor,
      String actionButtonTextKey,
      bool isLoading});
}

/// @nodoc
class __$HomePageViewModelCopyWithImpl<$Res>
    extends _$HomePageViewModelCopyWithImpl<$Res>
    implements _$HomePageViewModelCopyWith<$Res> {
  __$HomePageViewModelCopyWithImpl(
      _HomePageViewModel _value, $Res Function(_HomePageViewModel) _then)
      : super(_value, (v) => _then(v as _HomePageViewModel));

  @override
  _HomePageViewModel get _value => super._value as _HomePageViewModel;

  @override
  $Res call({
    Object? lockStatus = freezed,
    Object? bodyTextKey = freezed,
    Object? bodyTextColor = freezed,
    Object? actionButtonTextKey = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_HomePageViewModel(
      lockStatus: lockStatus == freezed
          ? _value.lockStatus
          : lockStatus // ignore: cast_nullable_to_non_nullable
              as LockStatus,
      bodyTextKey: bodyTextKey == freezed
          ? _value.bodyTextKey
          : bodyTextKey // ignore: cast_nullable_to_non_nullable
              as String,
      bodyTextColor: bodyTextColor == freezed
          ? _value.bodyTextColor
          : bodyTextColor // ignore: cast_nullable_to_non_nullable
              as Color,
      actionButtonTextKey: actionButtonTextKey == freezed
          ? _value.actionButtonTextKey
          : actionButtonTextKey // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomePageViewModel implements _HomePageViewModel {
  const _$_HomePageViewModel(
      {required this.lockStatus,
      required this.bodyTextKey,
      required this.bodyTextColor,
      required this.actionButtonTextKey,
      this.isLoading = false});

  @override
  final LockStatus lockStatus;
  @override
  final String bodyTextKey;
  @override
  final Color bodyTextColor;
  @override
  final String actionButtonTextKey;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomePageViewModel(lockStatus: $lockStatus, bodyTextKey: $bodyTextKey, bodyTextColor: $bodyTextColor, actionButtonTextKey: $actionButtonTextKey, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomePageViewModel &&
            const DeepCollectionEquality()
                .equals(other.lockStatus, lockStatus) &&
            const DeepCollectionEquality()
                .equals(other.bodyTextKey, bodyTextKey) &&
            const DeepCollectionEquality()
                .equals(other.bodyTextColor, bodyTextColor) &&
            const DeepCollectionEquality()
                .equals(other.actionButtonTextKey, actionButtonTextKey) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lockStatus),
      const DeepCollectionEquality().hash(bodyTextKey),
      const DeepCollectionEquality().hash(bodyTextColor),
      const DeepCollectionEquality().hash(actionButtonTextKey),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$HomePageViewModelCopyWith<_HomePageViewModel> get copyWith =>
      __$HomePageViewModelCopyWithImpl<_HomePageViewModel>(this, _$identity);
}

abstract class _HomePageViewModel implements HomePageViewModel {
  const factory _HomePageViewModel(
      {required LockStatus lockStatus,
      required String bodyTextKey,
      required Color bodyTextColor,
      required String actionButtonTextKey,
      bool isLoading}) = _$_HomePageViewModel;

  @override
  LockStatus get lockStatus;
  @override
  String get bodyTextKey;
  @override
  Color get bodyTextColor;
  @override
  String get actionButtonTextKey;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$HomePageViewModelCopyWith<_HomePageViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
