import 'package:get_it/get_it.dart';
import 'package:bases_web/services/navigator_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
