import 'dart:html';

void main() {
  querySelector('#output').text = 'Your result will be displayed here';


  querySelector('#num1').onChange.listen(func);
  querySelector('#num2').onChange.listen(func);
}

void func(Event event){
  int num1 = int.parse((querySelector('#num1') as InputElement).value);
  int num2 = int.parse((querySelector('#num2') as InputElement).value);

  querySelector('#output').text = (num1 + num2).toString();
}
