// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hacksprint_flutter/application/bloc/auth/auth_bloc.dart' as _i6;
import 'package:hacksprint_flutter/application/bloc/chat/chat_bloc.dart' as _i7;
import 'package:hacksprint_flutter/application/repository/auth_repository.dart'
    as _i3;
import 'package:hacksprint_flutter/application/repository/chat_repositiry.dart'
    as _i4;
import 'package:hacksprint_flutter/core/utils/http_service.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthRepository>(() => _i3.AuthRepository());
    gh.factory<_i4.ChatRepository>(() => _i4.ChatRepository());
    gh.factory<_i5.Http>(() => _i5.Http());
    gh.factory<_i6.AuthBloc>(
        () => _i6.AuthBloc(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i7.ChatBloc>(() => _i7.ChatBloc(gh<_i4.ChatRepository>()));
    return this;
  }
}
