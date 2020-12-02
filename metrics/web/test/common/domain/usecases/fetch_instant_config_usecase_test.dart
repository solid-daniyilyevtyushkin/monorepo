import 'package:flutter_test/flutter_test.dart';
import 'package:metrics/common/domain/repositories/instant_config_repository.dart';
import 'package:metrics/common/domain/usecases/fetch_instant_config_usecase.dart';
import 'package:metrics/common/domain/usecases/parameters/instant_config_param.dart';
import 'package:mockito/mockito.dart';

void main() {
  group("FetchInstantConfigUseCase", () {
    const isFpsMonitorEnabled = true;
    const isLoginFormEnabled = false;
    const isRendererDisplayEnabled = false;

    final repository = RemoteConfigurationRepositoryMock();
    final useCase = FetchInstantConfigUseCase(repository);
    const param = InstantConfigParam(
      isLoginFormEnabled: isLoginFormEnabled,
      isFpsMonitorEnabled: isFpsMonitorEnabled,
      isRendererDisplayEnabled: isRendererDisplayEnabled,
    );

    tearDown(() {
      reset(repository);
    });

    test(
      "throws an ArgumentError if the given repository is null",
      () {
        expect(
          () => FetchInstantConfigUseCase(null),
          throwsArgumentError,
        );
      },
    );

    test("successfully creates an instance on a valid input", () {
      expect(
        () => FetchInstantConfigUseCase(repository),
        returnsNormally,
      );
    });

    test(
      ".call() uses the fetch method of the instant config repository",
      () async {
        await useCase(param);

        verify(repository.fetch(
          isFpsMonitorEnabled: isFpsMonitorEnabled,
          isLoginFormEnabled: isLoginFormEnabled,
          isRendererDisplayEnabled: isRendererDisplayEnabled,
        )).called(1);
      },
    );
  });
}

class RemoteConfigurationRepositoryMock extends Mock
    implements InstantConfigRepository {}
