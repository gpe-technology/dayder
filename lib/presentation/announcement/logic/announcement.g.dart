// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllHash() => r'1feda8d3a04a74bd8f2305befa4a86bcae8e52b1';

/// See also [getAll].
@ProviderFor(getAll)
final getAllProvider =
    AutoDisposeFutureProvider<List<AnnouncementModel>>.internal(
  getAll,
  name: r'getAllProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getAllHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAllRef = AutoDisposeFutureProviderRef<List<AnnouncementModel>>;
String _$postHash() => r'b31b8740a935da5a19547e44a0b002f4c7dce179';

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

/// See also [post].
@ProviderFor(post)
const postProvider = PostFamily();

/// See also [post].
class PostFamily extends Family<AsyncValue<void>> {
  /// See also [post].
  const PostFamily();

  /// See also [post].
  PostProvider call(
    AnnouncementModel announcement,
  ) {
    return PostProvider(
      announcement,
    );
  }

  @override
  PostProvider getProviderOverride(
    covariant PostProvider provider,
  ) {
    return call(
      provider.announcement,
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
  String? get name => r'postProvider';
}

/// See also [post].
class PostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [post].
  PostProvider(
    AnnouncementModel announcement,
  ) : this._internal(
          (ref) => post(
            ref as PostRef,
            announcement,
          ),
          from: postProvider,
          name: r'postProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$postHash,
          dependencies: PostFamily._dependencies,
          allTransitiveDependencies: PostFamily._allTransitiveDependencies,
          announcement: announcement,
        );

  PostProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.announcement,
  }) : super.internal();

  final AnnouncementModel announcement;

  @override
  Override overrideWith(
    FutureOr<void> Function(PostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostProvider._internal(
        (ref) => create(ref as PostRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        announcement: announcement,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _PostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostProvider && other.announcement == announcement;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, announcement.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `announcement` of this provider.
  AnnouncementModel get announcement;
}

class _PostProviderElement extends AutoDisposeFutureProviderElement<void>
    with PostRef {
  _PostProviderElement(super.provider);

  @override
  AnnouncementModel get announcement => (origin as PostProvider).announcement;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
