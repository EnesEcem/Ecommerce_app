import 'package:ecommerce_app/const.dart';
import 'package:http/http.dart' as http;

class ReomoteQuestionService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/questions';

  Future<dynamic> get() async {
    var response = await client.get(Uri.parse('$remoteUrl'));

    return response;
  }
}
