// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcements_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnnouncementsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnnouncementsState()';
}


}

/// @nodoc
class $AnnouncementsStateCopyWith<$Res>  {
$AnnouncementsStateCopyWith(AnnouncementsState _, $Res Function(AnnouncementsState) __);
}


/// @nodoc


class AnnouncementsLoading implements AnnouncementsState {
  const AnnouncementsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnnouncementsState.loading()';
}


}




/// @nodoc


class AnnouncementsLoaded implements AnnouncementsState {
  const AnnouncementsLoaded(final  List<Announcement> data): _data = data;
  

 final  List<Announcement> _data;
 List<Announcement> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AnnouncementsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementsLoadedCopyWith<AnnouncementsLoaded> get copyWith => _$AnnouncementsLoadedCopyWithImpl<AnnouncementsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementsLoaded&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AnnouncementsState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $AnnouncementsLoadedCopyWith<$Res> implements $AnnouncementsStateCopyWith<$Res> {
  factory $AnnouncementsLoadedCopyWith(AnnouncementsLoaded value, $Res Function(AnnouncementsLoaded) _then) = _$AnnouncementsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Announcement> data
});




}
/// @nodoc
class _$AnnouncementsLoadedCopyWithImpl<$Res>
    implements $AnnouncementsLoadedCopyWith<$Res> {
  _$AnnouncementsLoadedCopyWithImpl(this._self, this._then);

  final AnnouncementsLoaded _self;
  final $Res Function(AnnouncementsLoaded) _then;

/// Create a copy of AnnouncementsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AnnouncementsLoaded(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Announcement>,
  ));
}


}

/// @nodoc


class AnnouncementsError implements AnnouncementsState {
  const AnnouncementsError(this.error, this.stackTrace);
  

 final  Exception error;
 final  StackTrace stackTrace;

/// Create a copy of AnnouncementsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementsErrorCopyWith<AnnouncementsError> get copyWith => _$AnnouncementsErrorCopyWithImpl<AnnouncementsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementsError&&(identical(other.error, error) || other.error == error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,stackTrace);

@override
String toString() {
  return 'AnnouncementsState.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $AnnouncementsErrorCopyWith<$Res> implements $AnnouncementsStateCopyWith<$Res> {
  factory $AnnouncementsErrorCopyWith(AnnouncementsError value, $Res Function(AnnouncementsError) _then) = _$AnnouncementsErrorCopyWithImpl;
@useResult
$Res call({
 Exception error, StackTrace stackTrace
});




}
/// @nodoc
class _$AnnouncementsErrorCopyWithImpl<$Res>
    implements $AnnouncementsErrorCopyWith<$Res> {
  _$AnnouncementsErrorCopyWithImpl(this._self, this._then);

  final AnnouncementsError _self;
  final $Res Function(AnnouncementsError) _then;

/// Create a copy of AnnouncementsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = null,}) {
  return _then(AnnouncementsError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace,
  ));
}


}

// dart format on
