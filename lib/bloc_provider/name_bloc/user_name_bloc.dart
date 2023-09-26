import '../../setting/exportA.dart';

part 'user_name_event.dart';
part 'user_name_bloc.freezed.dart';

class UserNameBloc extends Bloc<UserNameEvent, String> with HydratedMixin{
  UserNameBloc() : super('') {
    on<UserNameEvent>(
            (event, emit) => emit(event.name)
    );
  }

  @override
  String? fromJson(Map<String, dynamic> json) => json['name'];

  @override
  Map<String, dynamic>? toJson(String state) => { 'name': state };
}
