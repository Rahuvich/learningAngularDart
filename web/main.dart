import 'dart:html';

void main() {
  Element title = querySelector('#title');
  title.text = "This app calculates the sum of both numbers";
  title.style.textAlign = "center";
  title.style.fontSize = "28px";
  title.style.padding = "20px";

  querySelector('#output').text = 'Your result will be displayed here';


  querySelector('#num1').onChange.listen(func);
  querySelector('#num2').onChange.listen(func);
}

void func(Event event){
  int num1 = int.parse((querySelector('#num1') as InputElement).value);
  int num2 = int.parse((querySelector('#num2') as InputElement).value);

  querySelector('#output').text = (num1 + num2).toString();
}
