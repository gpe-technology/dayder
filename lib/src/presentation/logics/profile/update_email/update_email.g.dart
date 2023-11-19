// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_email.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateEmailHash() => r'073480f63dd3d1d959f7865367390ccad7806a4a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [updateEmail].
@ProviderFor(updateEmail)
const updateEmailProvider = UpdateEmailFamily();

/// See also [updateEmail].
class UpdateEmailFamily extends Family<AsyncValue<void>> {
  /// See also [updateEmail].
  const UpdateEmailFamily();

  /// See also [updateEmail].
  UpdateEmailProvider call({
    required String value,
  }) {
    return UpdateEmailProvider(
      value: value,
    );
  }

  @override
  UpdateEmailProvider getProviderOverride(
    covariant UpdateEmailProvider provider,
  ) {
    return call(
      value: provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateEmailProvider';
}

/// See also [updateEmail].
class UpdateEmailProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateEmail].
  UpdateEmailProvider({
    required String value,
  }) : this._internal(
          (ref) => updateEmail(
            ref as UpdateEmailRef,
            value: value,
          ),
          from: updateEmailProvider,
          name: r'updateEmailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateEmailHash,
          dependencies: UpdateEmailFamily._dependencies,
          allTransitiveDependencies:
              UpdateEmailFamily._allTransitiveDependencies,
          value: value,
        );

  UpdateEmailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final String value;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateEmailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateEmailProvider._internal(
        (ref) => create(ref as UpdateEmailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateEmailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateEmailProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateEmailRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `value` of this provider.
  String get value;
}

class _UpdateEmailProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateEmailRef {
  _UpdateEmailProviderElement(super.provider);

  @override
  String get value => (origin as UpdateEmailProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
