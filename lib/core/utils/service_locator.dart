import 'package:book_ly/core/utils/api_service.dart';
import 'package:book_ly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>()));
}
