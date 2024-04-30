class Urls {
  static const String _baseurl = '{{BASE}}/UserLogin/engr.rabbil@yahoo.com';
  static verifyEmail(String email) => '$_baseurl/UserLogin/$email';
}
