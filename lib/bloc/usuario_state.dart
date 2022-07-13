part of 'usuario_bloc.dart';

@immutable
class UserState {
  final bool existUser;
  final Usuario? user;

  const UserState({this.existUser = false , this.user});
}

class UserInitialState extends UserState {
  const UserInitialState():super(existUser: false, user: null);
}

class UserSetState extends UserState {
  final Usuario user;

  const UserSetState(this.user):super(existUser: true,user: user);
}
