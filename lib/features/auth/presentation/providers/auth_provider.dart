// import 'package:athlete_app/features/auth/data/auth_remote_data_source.dart';
// import 'package:athlete_app/features/auth/data/auth_repository.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:dio/dio.dart';


// final dioProvider = Provider<Dio>((ref) {
//   return Dio();  // Initialize Dio
// });

// final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
//   final dio = ref.watch(dioProvider);
//   return AuthRemoteDataSource(dio);
// });

// final authRepositoryProvider = Provider<AuthRepository>((ref) {
//   final authRemoteDataSource = ref.watch(authRemoteDataSourceProvider);
//   return AuthRepository(authRemoteDataSource);
// });