import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/screen/viewModel/MagicBallViewModel.dart';
import 'package:surf_practice_magic_ball/src/core/model/fullResponce.dart';
import 'package:surf_practice_magic_ball/src/core/model/singleResponse.dart';

import 'package:surf_practice_magic_ball/src/core/repositories/dto/question_dto.dart';

class BallView extends StatefulWidget {
  const BallView({super.key});

  @override
  State<BallView> createState() => _BallViewState();
}

class _BallViewState extends State<BallView> {
  final request = RequestDTO(question: 'i win football', lucky: true);
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MagicBallViewModel>();

    return FutureBuilder(
      future: viewModel.repository.getResponse<FullResponseModel>(request),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final model = snapshot.data as FullResponseModel;
          print(model.question);

          return SizedBox(
            width: 150,
            height: 150,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.yellow, shape: BoxShape.circle),
              child: Center(child: Text(model.reading)),
            ),
          );
        }
        return Container(
          color: Colors.pink,
        );
      },
    );
  }
}
