import 'package:drogovat/features/splash/presentation/views/splash_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/drugs/presentation/views/drugs_view.dart';
import '../../features/home/presentation/views/final_revision_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/init_page/presentation/views/init_page_view.dart';
import '../../features/monitor/presentation/views/monitor_view.dart';
import '../../features/settings/presentation/views/settings_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const SplashView()),
  GetPage(name: '/initPage', page: () => const InitPageView()),
  GetPage(name: '/homeView', page: () => const HomeView()),
  GetPage(name: '/finalRevision', page: () => const FinalRevisionView()),
  GetPage(name: '/monitorView', page: () => const MonitorView()),
  GetPage(name: '/drugsView', page: () => const DrugsView()),
  GetPage(name: '/settingsView', page: () => const SettingsView()),
];
