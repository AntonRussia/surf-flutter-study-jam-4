import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/Logic/BallEvent.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/Logic/BallState.dart';

class BallLogic extends Bloc<BallEvent, BallState> {
  BallLogic(super.initialState) {
    on<BallEvent>(onMapperEvent);
  }

  onMapperEvent(BallEvent event, Emitter<BallState> emit) async {}
}
