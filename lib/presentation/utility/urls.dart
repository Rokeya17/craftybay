class Urls {
  static const String _baseUrl = '{{BASE}}/UserLogin/engr.rabbil@yahoo.com';
  static verifyEmail(String email) => '$_baseUrl/UserLogin/$email';
  static verifyOtp(String email, String otp) =>
      '$_baseUrl/UserLogin/$email/$otp';
}
