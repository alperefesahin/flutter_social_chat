// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

@LazySingleton()
class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState.empty());
}
