import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/Logic/BallLogic.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/Logic/BallState.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/MagicBallViewModel.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/MagicBallViewModelState.dart';
import 'package:surf_practice_magic_ball/screen/widgets/ball_view.dart';
import 'package:surf_practice_magic_ball/src/core/service/ApiService.dart';
import 'package:surf_practice_magic_ball/src/infrastructure/db/repository/question_repository.dart';

class MagicBallScreen extends StatelessWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: openBallView(),
        ),
      ),
    );
  }

  Widget openBallView() => BlocProvider(
        create: (context) => MagicBallViewModel(
            InitialMagicBallViewModelState(),
            QuestionRepository(dataSource: ApiService.instance),
            logicBloc: BallLogic(InitialBallState())),
        child: const BallView(),
      );
}
