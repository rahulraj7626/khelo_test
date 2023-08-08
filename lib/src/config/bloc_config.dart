import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khelo_test/src/home/presentation/bloc/curosel/curosel_bloc.dart';

import '../home/presentation/bloc/home/home_bloc.dart';

final providerList = [
  BlocProvider<HomeBloc>(create: (context) => HomeBloc()),
  BlocProvider<CuroselBloc>(create: (context) => CuroselBloc()),
];
