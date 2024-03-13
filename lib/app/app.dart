import 'package:egczacademy/services/countries_service.dart';
import 'package:egczacademy/services/courses_api_service.dart';
import 'package:egczacademy/services/document_service.dart';
import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/welcome/welcome_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/ammunition_api_service.dart';
import '../services/authentication_service.dart';
import '../services/booking_api_service.dart';
import '../services/booking_service.dart';
import '../services/brand_api_service.dart';
import '../services/caliber_api_service.dart';
import '../services/document_api_service.dart';
import '../services/equipments_api_service.dart';
import '../services/gun_list_service.dart';
import '../services/guns_api_service.dart';
import '../services/user_api_service.dart';
import '../views/home/home_view.dart';
import '../views/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(
    page: WelcomeView,
  ), // contains login and register
  MaterialRoute(page: HomeView),
], dependencies: [
  LazySingleton(
    classType: AuthenticationService,
  ),
  LazySingleton(
    classType: NavigationService,
  ),
  LazySingleton(
    classType: DialogService,
  ),
  LazySingleton(
    classType: FireBaseAuthService,
  ),
  LazySingleton(
    classType: UserService,
  ),
  LazySingleton(
    classType: UserAPIService,
  ),
  Singleton(
    classType: SharedPrefService,
  ),
  LazySingleton(
    classType: GunAPIService,
  ),
  LazySingleton(
    classType: AmmunitionAPIService,
  ),
  LazySingleton(
    classType: EquipmentsAPIService,
  ),
  LazySingleton(
    classType: BookingAPIService,
  ),
  LazySingleton(
    classType: BrandAPIService,
  ),
  LazySingleton(
    classType: GunListService, //mixin
  ),
  LazySingleton(
    classType: CaliberAPIService,
  ),
  LazySingleton(
    classType: DocumentAPIService,
  ),
  LazySingleton(
    classType: DocumentService,
  ),
  LazySingleton(
    classType: BookingService,
  ),
  LazySingleton(
    classType: HomePagingService,
  ),
  LazySingleton(
    classType: CourseAPIService,
  ),
  LazySingleton(
    classType: CountriesService,
  ),
  // LazySingleton(
  //   classType: FireBaseMessagingService,
  // ),
])
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
