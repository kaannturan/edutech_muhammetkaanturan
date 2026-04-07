class Validators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'E-posta boş olamaz';
    }

    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Geçerli bir e-posta giriniz';
    }

    return null;
  }
}
