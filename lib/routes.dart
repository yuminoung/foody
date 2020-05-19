import 'pages/_export_pages.dart';

setupRoute() {
  return {
    '/': (context) => Launch(),
    '/home': (context) => Home(),
    '/search': (context) => Search(),
    '/address': (context) => Address(),
    '/restaurant': (context) => Restaurant(),
  };
}
