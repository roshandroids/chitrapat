class Endpoints {
  static const String getUser = '/auth/users';
  static const String login = '/auth/login';
  static const String userProfile = '/auth/user-info';
  static const String googleLogin = '/auth/google-login';
  static const String adminLogin = '/admin/login';
  static const String updateUser = '/auth/user-update';
  static const String uploadImg = '/picture-uploads';
  static const String changePassword = '/auth/change-password';
  static const String forgetPassword = '/auth/forget-password';
  static const String verifyPassword = '/auth/verify-forget-password';
  static const String signup = '/auth/signup';
  static const String resendEmail = '/auth/resend-email';
  static const String verifyEmail = '/auth/verify-email';
  static const String adminSignup = '/admin/signup';
  static const String createMedia = '/media';
  static const String createFaq = '/faq';
  static const String createSymptomsLog = '/log-symptoms';
  static const String getSymptomsLog = '/log-symptoms';
  static const String periodLog = '/period-log';
  static const String getFaq = '/faq';
  static const String updateNotificationEmail =
      '/auth/update-notification-email';
  static const String updateNotificationPush = '/auth/update-notification-push';
}
