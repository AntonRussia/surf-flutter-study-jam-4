import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/MagicBallViewModel.dart';
import 'package:surf_practice_magic_ball/src/core/repositories/dto/question_dto.dart';

class BallView extends StatefulWidget {
  const BallView({super.key});

  @override
  State<BallView> createState() => _BallViewState();
}

class _BallViewState extends State<BallView> {
  final request = RequestDTO(question: 'will i win the lottery', lucky: true);
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MagicBallViewModel>();

    return FutureBuilder(
      future: viewModel.repository.getData(request),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.yellow, shape: BoxShape.circle),
          );
        }
        return const SizedBox();
      },
    );
  }
}
