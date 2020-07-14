import 'package:get_it/get_it.dart';
import 'package:web_app/services/callsAndMessagesService.dart';
import 'package:web_app/services/navigationService.dart';

GetIt locator = GetIt.instance;
GetIt urlLocator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}

void setupUrlLocator() {
  urlLocator.registerSingleton(CallsAndMessagesService());
}