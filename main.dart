import 'Complex.dart';

void main() {
  var c = Complex(1, 2);
  var c2 = Complex(1, 2);

  var i = Complex.imaginary(10);
  var r = Complex.real(10);
  var q = Quaternion(1, -2, 3);

  // c.real = 10; //setter of real property
  // c.imaginary = 12; //setter of imaginary property

  print(c);
  print(c2);
  print(i);
  print(r);
  print(c + c2);
  print(q);

  print(c.multiply(c2)); //multiple 2 complex number
  print(Complex.substract(c, c2)); //substract two complex number
  print(q + c2);

  print('create object ${Complex.counter} times');
}
