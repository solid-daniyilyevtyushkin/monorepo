import 'package:equatable/equatable.dart';

/// An entity representing a feature config.
class FeatureConfig extends Equatable {
  /// Indicates whether the password sign-in option is enabled.
  final bool isPasswordSignInOptionEnabled;

  /// Indicates whether the debug menu feature is enabled.
  final bool isDebugMenuEnabled;

  @override
  List<Object> get props => [
        isPasswordSignInOptionEnabled,
        isDebugMenuEnabled,
      ];

  /// Creates a new instance of the [FeatureConfig] with the given parameters.
  const FeatureConfig({
    this.isPasswordSignInOptionEnabled,
    this.isDebugMenuEnabled,
  });
}
