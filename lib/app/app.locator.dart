// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/ammunition_api_service.dart';
import '../services/authentication_service.dart';
import '../services/booking_api_service.dart';
import '../services/booking_service.dart';
import '../services/brand_api_service.dart';
import '../services/caliber_api_service.dart';
import '../services/courses_api_service.dart';
import '../services/document_api_service.dart';
import '../services/document_service.dart';
import '../services/equipments_api_service.dart';
import '../services/firebase_auth_service.dart';
import '../services/gun_list_service.dart';
import '../services/guns_api_service.dart';
import '../services/home_paging_service.dart';
import '../services/sharedpref_service.dart';
import '../services/user_api_service.dart';
import '../services/user_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => FireBaseAuthService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => UserAPIService());
  locator.registerSingleton(SharedPrefService());
  locator.registerLazySingleton(() => GunAPIService());
  locator.registerLazySingleton(() => AmmunitionAPIService());
  locator.registerLazySingleton(() => EquipmentsAPIService());
  locator.registerLazySingleton(() => BookingAPIService());
  locator.registerLazySingleton(() => BrandAPIService());
  locator.registerLazySingleton(() => GunListService());
  locator.registerLazySingleton(() => CaliberAPIService());
  locator.registerLazySingleton(() => DocumentAPIService());
  locator.registerLazySingleton(() => DocumentService());
  locator.registerLazySingleton(() => BookingService());
  locator.registerLazySingleton(() => HomePagingService());
  locator.registerLazySingleton(() => CourseAPIService());
}
