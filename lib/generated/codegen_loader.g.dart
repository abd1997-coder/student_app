// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names, always_specify_types

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> _ar = {
    "noInternetConnectionError":
        "لا يوجد اتصال بالإنترنت، يرجى المحاولة مرة أخرى",
    "genericError": "حدث خطأ، يرجى المحاولة مرة أخرى",
    "unknownError": "خطأ في الخادم الداخلي، يرجى المحاولة مرة أخرى",
    "unauthorizedClientError": "مستخدم غير مصرح",
    "invalidTokenError": "انتهت صلاحية الجلسة، يرجى تسجيل الدخول مرة أخرى",
    "noDataFoundError": "لا توجد نتائج",
    "unacceptableContentError": "يرجى إدخال معلومات صالحة",
    "phoneNumber": "رقم الهاتف",
    "password": "كلمة المرور",
    "signIn": "تسجيل الدخول",
    "emptyField": "لا يمكن ترك هذا الحقل فارغًا",
    "lengthError": "يجب أن يحتوي الحقل على {} أحرف على الأقل",
    "maxLengthError":
        "الإدخال يتجاوز الحد الأقصى المسموح به وهو {maxLength} حرفًا.",
    "passwordLengthError": "كلمة المرور يجب ان تكون على الاقل 6 محارف",
    "emailError": "البريد الإلكتروني غير صالح",
    "passwordError": "كلمة المرور غير صالحة",
    "confirmPasswordError": "تأكيد كلمة المرور لا يطابق كلمة المرور",
    "phoneError": "رقم الهاتف غير صالح",
    "doNotHaveAnAccount": "ليس لديك حساب؟",
    "signUp": "إنشاء حساب",
    "getStarted": "ابدأ الآن",
    "createNewAccount": "إنشاء حساب جديد",
    "name": "الاسم",
    "confirmPassword": "تأكيد كلمة المرور",
    "whatIsNajahi": "ماهي منصة نجاحي ؟",
    "najahiItIs":
        "هي منصة لفريق من أفضل الكوادر التدريسية لكل ما تحتاجه للمرحلتين البكالوريا والتاسع من كورسات ومكثفات وملفات وأسئلة دورات.\nباختصار هي طريقك نحو التفوق والنجاح.",
    "additionalToOurFeatures": "بالإضافة إلى ميزاتنا !!",
    "ourFeatureMsg":
        "فريق لديه الخبرة الكاملة لتقديم كل المساعدة و الدعم للوصول للحلم.\nإنهاء المنهاج كاملاً بمدة ووقت قياسي ومدروس.\nتوفير مادي يصل إلى أكثر من 50% من الأسعار الواقعية.\nإمكانية إعادة المنهاج أكثر من مرة وبنفس التكلفة.",
    "whyIsNajahi": "لماذا تطبيق نجاحي ؟",
    "najahiCanDo":
        "توفير الجهد والوقت الذي يتطلبه الخروج من المنزل مع إمكانية الدراسة في أي زمان ومكان.\nمساعدة الطلاب بطرح أسئلة في قسم إطرح سؤالاً.\nدعم نفسي ونصائح لكل المواد في قسم خاص.\nحل كافة الدورات بشكل دقيق وواضح.",
    "next": "التالي",
    "start": "إبدأ",
  };
  static const Map<String, dynamic> _en = {
    "noInternetConnectionError": "No internet connection, please try again",
    "genericError": "Something went wrong, please try again",
    "unknownError": "Internal server error, please try again",
    "unauthorizedClientError": "Unauthorized user",
    "invalidTokenError": "Your session has ended, please login again",
    "noDataFoundError": "There are no results",
    "unacceptableContentError": "Please enter valid information",
    "phoneNumber": "Phone Number",
    "password": "Password",
    "signIn": "Sign In",
    "emptyField": "This field can't be empty",
    "lengthError": "Field must contain at least {} characters",
    "maxLengthError":
        "The input exceeds the maximum allowed length of {maxLength} characters.",
    "passwordLengthError": "Password must contain at least 6 characters",
    "emailError": "Email is not valid",
    "passwordError": "Password is not valid",
    "confirmPasswordError": "Confirm Password does not match password",
    "phoneError": "Phone number is not valid",
    "doNotHaveAnAccount": "Don’t have an account?",
    "signUp": "Sign Up",
    "getStarted": "Get Started",
    "createNewAccount": "Create new account",
    "name": "Name",
    "confirmPassword": "Confirm Password",
    "additionalToOurFeatures": "In addition to our features!!",
    "ourFeatureMsg":
        "A team with full experience to provide all the help and support to achieve the dream.\nComplete the entire curriculum in a record and well-planned time.\nFinancial savings of more than 50% compared to real prices.\nThe ability to repeat the curriculum multiple times at the same cost.",
    "whyIsNajahi": "Why Najahi App?",
    "najahiCanDo":
        "Save the time and effort required to leave the house with the ability to study anytime and anywhere.\nHelping students ask questions in the 'Ask a Question' section.\nPsychological support and advice for all subjects in a dedicated section.\nSolving all courses accurately and clearly.",
    "next": "Next",
    "start": "Start",
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": _ar,
    "en": _en,
  };
}
