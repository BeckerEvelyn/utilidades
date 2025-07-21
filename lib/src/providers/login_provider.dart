import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:utilidades/src/controllers/loginriver_controller.dart';
import 'package:utilidades/src/models/login_state.dart';

final loginProvider = StateNotifierProvider<LoginriverController, LoginState>((ref) => LoginriverController());
