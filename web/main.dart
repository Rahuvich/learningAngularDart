import 'dart:html';

void main() {
  Element title = querySelector('#title');
  title.text = "This app converts your decimal number to binary";
  title.style.textAlign = "center";
  title.style.fontSize = "28px";
  title.style.padding = "20px";

  querySelector('#output').text = 'Your result will be displayed here';


  querySelector('#num1').onChange.listen(func);
}

void func(Event event){
  int num1 = int.parse((querySelector('#num1') as InputElement).value);

  int bin = 0, i = 1;
  while(num1 > 0){
    bin = bin + (num1 % 2)*i;
    num1 = (num1/2).floor();
    i = i*10;
  }

  querySelector('#output').text = (bin).toString();
}
