String replaceOne(String str, String subject, String replacer) {
  /* This will replace a character from a string */
  Iterable<String> str1 = str.split('');
  String result = "";
  for (String i in str1) {
    if (i == subject) {
      result = result + replacer;
    } else {
      result = result + i;
    }
  }
  return result;
}