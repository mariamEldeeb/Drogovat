import 'package:drogovat/features/home/presentation/views/final_revision_view.dart';
import 'package:get/get.dart';

import '../../features/home/presentation/views/home_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const HomeView()),
  GetPage(name: '/finalRevision', page: () => const FinalRevisionView()),
];