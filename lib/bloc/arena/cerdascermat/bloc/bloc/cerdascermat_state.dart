part of 'cerdascermat_bloc.dart';

abstract class CerdascermatState extends Equatable {
  const CerdascermatState();

  @override
  List<Object> get props => [];
}

class CerdascermatInitial extends CerdascermatState {}

class CerdascermatCariLawanState extends CerdascermatState {}

class CerdascermatPlayState extends CerdascermatState {}

class CerdascermatResultState extends CerdascermatState {}
