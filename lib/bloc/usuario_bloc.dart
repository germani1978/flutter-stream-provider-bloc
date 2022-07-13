import 'package:bloc/bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:meta/meta.dart';

part 'usuario_event.dart';
part 'usuario_state.dart';

class UserBloc extends Bloc<UsuarioEvent, UserState> {

  UserBloc() : super( const UserInitialState() ) {

    on<ActivarUser>((event, emit) {
      emit(UserSetState(event.user) );
    });

    on<CambiarEdad>((event, emit) {
      final user = state.user!.copyWith(edad: event.edad);
      emit( UserSetState(user)) ;
    });

    on<AgregarProfesion>((event, emit) {
      final user = state.user!.copyWith(profesiones: [...state.user!.profesiones, event.profesion]);
      emit( UserSetState(user)) ;
    });

    on<DelUser>((event, emit) {
      emit(const UserInitialState()) ;
    });
  }
}
