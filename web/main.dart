import 'dart:html';

void main() {
  Element title = querySelector('#title');
  title.text = "DEC to BIN, HEX, OCT converter";
  title.style.textAlign = "center";
  title.style.fontSize = "28px";
  title.style.padding = "20px";

  querySelector('#bin').text = 'Your binary result will be displayed here';
  querySelector('#hex').text = 'Your hexadecimal result will be displayed here';
  querySelector('#oct').text = 'Your octadecimal will be displayed here';


  querySelector('#num1').onChange.listen(func);
}

void func(Event event){
  int num1 = int.parse((querySelector('#num1') as InputElement).value);
  int aux = num1;

  int bin = 0, i = 1;
  while(aux > 0){
    bin = bin + (aux % 2)*i;
    aux = (aux/2).floor();
    i = i*10;
  }

  querySelector('#bin').text = (bin).toString();
  querySelector('#hex').text = num1.toRadixString(16).padLeft(4, '0').toUpperCase();
  querySelector('#oct').text = num1.toRadixString(8).padLeft(4, '0').toUpperCase();
}
