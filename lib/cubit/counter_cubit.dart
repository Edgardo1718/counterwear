import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state < 15) {
      emit(state + 1);
    } else {
      Fluttertoast.showToast(
        msg: "El límite es 15",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      reinicio();
    }
  }

  void decrement() {
    if (state > -15) {
      emit(state - 1);
    } else {
      Fluttertoast.showToast(
        msg: "El límite es -15",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      reinicio();
    }
  }

  void reinicio() => emit(0);
}