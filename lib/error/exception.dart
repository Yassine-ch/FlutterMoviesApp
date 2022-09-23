import 'package:movies_app/network/erroe_message_model.dart';

class ServerException  implements Exception{
  final ErrorMessageModel errorMessageModel;
  const ServerException (this.errorMessageModel);
}