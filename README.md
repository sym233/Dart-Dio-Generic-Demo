# Demo of Dio + Generic

Change url in `Url.dart`

Check proxy in `Api.dart`

## Add new api
1) add url in `Url.dart`
2) add json class in `Types/`
3) Generate new json type class (`name.g.dart`) as follow:
```
$ dart pub run build_runner build
```
4) add constructor in `_Converter<T>.fromJson` in `Types/BasicResponse.dart`
5) add corresponding method in `Api.dart`
