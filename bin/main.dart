import 'Api.dart';
import 'Storage.dart';
import 'config/AuthIntercept.dart';

Future<void> main() async {
  var loginResult = await Api().login('13800000110', 'qwer1234', 2);
  print('hello, ${loginResult.name}');
  var token = await Storage().getToken();
  print('your token is $token');
  var api = Api(interceptors: [AuthIntercept()]);
  var ps = await api.projectSelect();
  for (var p in ps) {
    print('project: ${p.name} - ${p.no}');
  }
  await api.logout();
  print('log out succeeded.');
}
