@JS()
library metrics_config;

import 'package:js/js.dart';
import 'package:metrics/common/domain/entities/metrics_config.dart';

/// A [MetricsConfig] implementation for web.
@JS('MetricsConfig')
class WebMetricsConfig implements MetricsConfig {
  @override
  external String get googleSignInClientId;

  @override
  external String get sentryDsn;

  @override
  external String get sentryEnvironment;

  @override
  external String get sentryRelease;

  /// Creates a new instance of the [WebMetricsConfig].
  external WebMetricsConfig();
}
