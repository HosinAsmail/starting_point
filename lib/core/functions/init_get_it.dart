import 'package:dio/dio.dart';
import 'package:starting_point/core/api/api_service.dart';
import 'package:starting_point/data/data%20source/locale/store_step_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initGetIt() {
  getIt.registerSingleton<StoreStepService>(StoreStepService());
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  // getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
  // getIt.get<ApiService>(),
  // ));
}
