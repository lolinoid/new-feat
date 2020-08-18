import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

part 'cerdascermat_event.dart';
part 'cerdascermat_state.dart';

class CerdascermatBloc extends Bloc<CerdascermatEvent, CerdascermatState> {
  CerdascermatBloc() : super(CerdascermatInitial());

  @override
  Stream<CerdascermatState> mapEventToState(
    CerdascermatEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
