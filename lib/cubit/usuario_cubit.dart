import 'package:bloc/bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:meta/meta.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  selecionarUsuario(Usuario user) {
    emit( UsuarioActivo(user)); 
  }

   cambiarEdad(int edad) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(edad: 10);
      emit( UsuarioActivo( newUser )); 
    }
  }

  agregarProfesion(String profesion) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(profesiones: [ ...currentState.usuario.profesiones, profesion]);
      emit( UsuarioActivo( newUser ));
    }
  }

  borrarUsuario() {
    emit(UsuarioInitial());
  }
}
