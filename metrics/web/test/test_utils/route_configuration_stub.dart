import 'package:metrics/common/presentation/navigation/route_configuration/route_configuration.dart';
import 'package:metrics/common/presentation/navigation/route_configuration/route_name.dart';

/// A stub implementation of the [RouteConfiguration] used in tests.
class RouteConfigurationStub extends RouteConfiguration {
  /// Creates a new instance of the route configuration stub.
  ///
  /// Provides the default value for the [authorizationRequired].
  const RouteConfigurationStub({
    RouteName name,
    String path,
  }) : super(name: name, path: path, authorizationRequired: false);
}
