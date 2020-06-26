import 'package:get_it/get_it.dart';
import 'package:web_app/services/navigationService.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}