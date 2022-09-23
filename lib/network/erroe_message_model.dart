import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final int statusCode;
  final String statusMessage;
  final bool success;

   const ErrorMessageModel(
      {required this.statusCode, required this.statusMessage, required this.success}
      );
  factory ErrorMessageModel.fromJson(Map<String ,dynamic>json){
    return ErrorMessageModel(
        statusCode: json["status_Code"],
        statusMessage: json["status_Message"],
        success: json["succes"]
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [statusCode, statusMessage, success];
}