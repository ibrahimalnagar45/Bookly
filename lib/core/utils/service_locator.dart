import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupSrviceLocator() {
  getit.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getit.registerSingleton<HomeRepeImpl>(
    HomeRepeImpl(
      apiService: getit.get<ApiService>(),
    ),
  );
}
