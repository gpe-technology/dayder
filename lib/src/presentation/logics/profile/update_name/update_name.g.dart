// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_name.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateNameHash() => r'665a005c211e781e0f554ebf44fa4b8adf2bdd8e';

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

/// See also [updateName].
@ProviderFor(updateName)
const updateNameProvider = UpdateNameFamily();

/// See also [updateName].
class UpdateNameFamily extends Family<AsyncValue<void>> {
  /// See also [updateName].
  const UpdateNameFamily();

  /// See also [updateName].
  UpdateNameProvider call({
    required String value,
  }) {
    return UpdateNameProvider(
      value: value,
    );
  }

  @override
  UpdateNameProvider getProviderOverride(
    covariant UpdateNameProvider provider,
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
  String? get name => r'updateNameProvider';
}

/// See also [updateName].
class UpdateNameProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateName].
  UpdateNameProvider({
    required String value,
  }) : this._internal(
          (ref) => updateName(
            ref as UpdateNameRef,
            value: value,
          ),
          from: updateNameProvider,
          name: r'updateNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateNameHash,
          dependencies: UpdateNameFamily._dependencies,
          allTransitiveDependencies:
              UpdateNameFamily._allTransitiveDependencies,
          value: value,
        );

  UpdateNameProvider._internal(
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
    FutureOr<void> Function(UpdateNameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateNameProvider._internal(
        (ref) => create(ref as UpdateNameRef),
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
    return _UpdateNameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateNameProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateNameRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `value` of this provider.
  String get value;
}

class _UpdateNameProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateNameRef {
  _UpdateNameProviderElement(super.provider);

  @override
  String get value => (origin as UpdateNameProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
