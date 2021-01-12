import 'Api.dart';
import 'Storage.dart';
import 'config/AuthIntercept.dart';

Future<void> main() async {
  var loginResult = await Api().login('13800000110', 'qwer1234', 2);
  print('hello, ${loginResult.name}');
  var token = await Storage().getToken();
  print('your token is $token');
  await Api(interceptors: [AuthIntercept()]).logout();
  print('log out succeeded.');
}
