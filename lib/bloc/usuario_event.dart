part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvent {}

class ActivarUser extends UsuarioEvent {
  final Usuario user;
  ActivarUser(this.user);
}

class DelUser extends UsuarioEvent {}

class CambiarEdad extends UsuarioEvent {
  final int edad;
  CambiarEdad(this.edad);
}
class AgregarProfesion extends UsuarioEvent {
  final String profesion;
  AgregarProfesion(this.profesion);
}