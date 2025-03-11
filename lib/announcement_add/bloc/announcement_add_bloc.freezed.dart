// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnnouncementAddEvent {

 AnnouncementModel get announcement;
/// Create a copy of AnnouncementAddEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementAddEventCopyWith<AnnouncementAddEvent> get copyWith => _$AnnouncementAddEventCopyWithImpl<AnnouncementAddEvent>(this as AnnouncementAddEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddEvent&&(identical(other.announcement, announcement) || other.announcement == announcement));
}


@override
int get hashCode => Object.hash(runtimeType,announcement);

@override
String toString() {
  return 'AnnouncementAddEvent(announcement: $announcement)';
}


}

/// @nodoc
abstract mixin class $AnnouncementAddEventCopyWith<$Res>  {
  factory $AnnouncementAddEventCopyWith(AnnouncementAddEvent value, $Res Function(AnnouncementAddEvent) _then) = _$AnnouncementAddEventCopyWithImpl;
@useResult
$Res call({
 AnnouncementModel announcement
});


$AnnouncementModelCopyWith<$Res> get announcement;

}
/// @nodoc
class _$AnnouncementAddEventCopyWithImpl<$Res>
    implements $AnnouncementAddEventCopyWith<$Res> {
  _$AnnouncementAddEventCopyWithImpl(this._self, this._then);

  final AnnouncementAddEvent _self;
  final $Res Function(AnnouncementAddEvent) _then;

/// Create a copy of AnnouncementAddEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? announcement = null,}) {
  return _then(_self.copyWith(
announcement: null == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as AnnouncementModel,
  ));
}
/// Create a copy of AnnouncementAddEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnouncementModelCopyWith<$Res> get announcement {
  
  return $AnnouncementModelCopyWith<$Res>(_self.announcement, (value) {
    return _then(_self.copyWith(announcement: value));
  });
}
}


/// @nodoc


class AnnouncementAddEventSubmitted implements AnnouncementAddEvent {
  const AnnouncementAddEventSubmitted(this.announcement);
  

@override final  AnnouncementModel announcement;

/// Create a copy of AnnouncementAddEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementAddEventSubmittedCopyWith<AnnouncementAddEventSubmitted> get copyWith => _$AnnouncementAddEventSubmittedCopyWithImpl<AnnouncementAddEventSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddEventSubmitted&&(identical(other.announcement, announcement) || other.announcement == announcement));
}


@override
int get hashCode => Object.hash(runtimeType,announcement);

@override
String toString() {
  return 'AnnouncementAddEvent.submit(announcement: $announcement)';
}


}

/// @nodoc
abstract mixin class $AnnouncementAddEventSubmittedCopyWith<$Res> implements $AnnouncementAddEventCopyWith<$Res> {
  factory $AnnouncementAddEventSubmittedCopyWith(AnnouncementAddEventSubmitted value, $Res Function(AnnouncementAddEventSubmitted) _then) = _$AnnouncementAddEventSubmittedCopyWithImpl;
@override @useResult
$Res call({
 AnnouncementModel announcement
});


@override $AnnouncementModelCopyWith<$Res> get announcement;

}
/// @nodoc
class _$AnnouncementAddEventSubmittedCopyWithImpl<$Res>
    implements $AnnouncementAddEventSubmittedCopyWith<$Res> {
  _$AnnouncementAddEventSubmittedCopyWithImpl(this._self, this._then);

  final AnnouncementAddEventSubmitted _self;
  final $Res Function(AnnouncementAddEventSubmitted) _then;

/// Create a copy of AnnouncementAddEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? announcement = null,}) {
  return _then(AnnouncementAddEventSubmitted(
null == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as AnnouncementModel,
  ));
}

/// Create a copy of AnnouncementAddEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnouncementModelCopyWith<$Res> get announcement {
  
  return $AnnouncementModelCopyWith<$Res>(_self.announcement, (value) {
    return _then(_self.copyWith(announcement: value));
  });
}
}

/// @nodoc
mixin _$AnnouncementAddState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnnouncementAddState()';
}


}

/// @nodoc
class $AnnouncementAddStateCopyWith<$Res>  {
$AnnouncementAddStateCopyWith(AnnouncementAddState _, $Res Function(AnnouncementAddState) __);
}


/// @nodoc


class AnnouncementAddInitial implements AnnouncementAddState {
  const AnnouncementAddInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnnouncementAddState.initial()';
}


}




/// @nodoc


class AnnouncementAddLoading implements AnnouncementAddState {
  const AnnouncementAddLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnnouncementAddState.loading()';
}


}




/// @nodoc


class AnnouncementAddSuccess implements AnnouncementAddState {
  const AnnouncementAddSuccess(this.announcement);
  

 final  AnnouncementModel announcement;

/// Create a copy of AnnouncementAddState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementAddSuccessCopyWith<AnnouncementAddSuccess> get copyWith => _$AnnouncementAddSuccessCopyWithImpl<AnnouncementAddSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddSuccess&&(identical(other.announcement, announcement) || other.announcement == announcement));
}


@override
int get hashCode => Object.hash(runtimeType,announcement);

@override
String toString() {
  return 'AnnouncementAddState.success(announcement: $announcement)';
}


}

/// @nodoc
abstract mixin class $AnnouncementAddSuccessCopyWith<$Res> implements $AnnouncementAddStateCopyWith<$Res> {
  factory $AnnouncementAddSuccessCopyWith(AnnouncementAddSuccess value, $Res Function(AnnouncementAddSuccess) _then) = _$AnnouncementAddSuccessCopyWithImpl;
@useResult
$Res call({
 AnnouncementModel announcement
});


$AnnouncementModelCopyWith<$Res> get announcement;

}
/// @nodoc
class _$AnnouncementAddSuccessCopyWithImpl<$Res>
    implements $AnnouncementAddSuccessCopyWith<$Res> {
  _$AnnouncementAddSuccessCopyWithImpl(this._self, this._then);

  final AnnouncementAddSuccess _self;
  final $Res Function(AnnouncementAddSuccess) _then;

/// Create a copy of AnnouncementAddState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? announcement = null,}) {
  return _then(AnnouncementAddSuccess(
null == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as AnnouncementModel,
  ));
}

/// Create a copy of AnnouncementAddState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnouncementModelCopyWith<$Res> get announcement {
  
  return $AnnouncementModelCopyWith<$Res>(_self.announcement, (value) {
    return _then(_self.copyWith(announcement: value));
  });
}
}

/// @nodoc


class AnnouncementAddError implements AnnouncementAddState {
  const AnnouncementAddError(this.error, this.stackTrace);
  

 final  Exception error;
 final  StackTrace stackTrace;

/// Create a copy of AnnouncementAddState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementAddErrorCopyWith<AnnouncementAddError> get copyWith => _$AnnouncementAddErrorCopyWithImpl<AnnouncementAddError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementAddError&&(identical(other.error, error) || other.error == error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,stackTrace);

@override
String toString() {
  return 'AnnouncementAddState.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $AnnouncementAddErrorCopyWith<$Res> implements $AnnouncementAddStateCopyWith<$Res> {
  factory $AnnouncementAddErrorCopyWith(AnnouncementAddError value, $Res Function(AnnouncementAddError) _then) = _$AnnouncementAddErrorCopyWithImpl;
@useResult
$Res call({
 Exception error, StackTrace stackTrace
});




}
/// @nodoc
class _$AnnouncementAddErrorCopyWithImpl<$Res>
    implements $AnnouncementAddErrorCopyWith<$Res> {
  _$AnnouncementAddErrorCopyWithImpl(this._self, this._then);

  final AnnouncementAddError _self;
  final $Res Function(AnnouncementAddError) _then;

/// Create a copy of AnnouncementAddState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = null,}) {
  return _then(AnnouncementAddError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace,
  ));
}


}

// dart format on
