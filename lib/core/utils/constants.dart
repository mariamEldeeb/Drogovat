import 'package:drogovat/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat/features/home/presentation/views/final_revision_view.dart';
import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:drogovat/features/settings/presentation/views/settings_view.dart';
import 'package:get/get.dart';

import '../../features/home/presentation/views/home_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const HomeView()),
  GetPage(name: '/finalRevision', page: () => const FinalRevisionView()),
  GetPage(name: '/monitorView', page: () => const MonitorView()),
  GetPage(name: '/drugsView', page: () => const DrugsView()),
  GetPage(name: '/settingsView', page: () => const SettingsView()),
];