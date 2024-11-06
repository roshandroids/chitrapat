extension FirstNameExtraction on String {
  String get firstName {
    return split(' ')[0];
  }

  String get initials {
    return split(' ').map((e) => e[0]).join().toUpperCase();
  }
}
