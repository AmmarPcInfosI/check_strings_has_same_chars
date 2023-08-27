import 'dart:io';


  void main() {  
      String str1 = "ddss";  
      String str2 = "dssd";    
      if (sameChars(str1, str2)) {    
          print("The strings \'$str1\' & \'$str2\' have the same characters.");  
      }else {
        print("The strings \'$str1\' & \'$str2\' do not have the same characters.");  
      } 
}
bool sameChars(String firstStr, String secondStr) {
  List<String> first = firstStr.split('');
  List<String> second = secondStr.split('');
  
  if (first.length != second.length) {
    return false;
  }
  
  first.sort();
  second.sort();
  
  for (int i = 0; i < first.length; i++) {
    if (first[i] != second[i]) {
      return false;
    }
  }
  
  return true;
}
