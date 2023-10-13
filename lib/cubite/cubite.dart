import 'package:flutter_application_4/cubite/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterSate> {
  CounterCubit() : super(CounterA());

  int PointTeamA = 0;
  int PointTeamB = 0;
  void countPoints({required int BuutonNum, required String team}) {
    if (team == 'A') {
      PointTeamA += BuutonNum;
      emit(CounterA());
    } else {
      PointTeamB += BuutonNum;
      emit(CounterB());
    }
  }

  void zeroPoints() {
    PointTeamA = 0;

    PointTeamB = 0;
    emit(CounterB());
  }
}
