import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/Logic/BallLogic.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/MagicBallViewModelState.dart';
import 'package:surf_practice_magic_ball/src/core/repositories/dataSource/dataSource.dart';

class MagicBallViewModel extends Cubit<MagicBallViewModelState> {
  late final BallLogic logic;

  final DataSourceProtocol repository;

  MagicBallViewModel(super.initialState, this.repository,
      {required BallLogic logicBloc}) {
    logic = logicBloc;
  }
}
