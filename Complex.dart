class Complex {
  // private property
  num _real;
  num _imaginary;
  static num counter = 0;

  get real => _real;
  get imaginary => _imaginary;
  // getter

  set real(num value) => _real = value;
  set imaginary(num value) => _imaginary = value;
  // setter

  Complex(this._real, this._imaginary) {
    counter = counter + 1;
  } //contructor

  Complex.real(num real)
      : this(real, 0); //create alias constructor(use initiatilizer using :)
  Complex.imaginary(num imaginary)
      : this(
            0, imaginary); //create alias constructor(use initiatilizer using :)

  Complex operator +(Complex c) {
    return Complex(this._real + c._real, this._imaginary + c._imaginary);
  }

  Complex multiply(Complex c) {
    var first = this._real * c._real;
    var inner = this._imaginary * c._real;
    var outer = this._real * c._imaginary;
    var last = this._imaginary * c._imaginary;

    return Complex(first + last, inner + outer);
    // example
    //(3 - 2i)*(4 + 6i) = 12 + 18i - 8i + 12 = 0 + 10i
  }

  static Complex substract(Complex c1, Complex c2) {
    //static method used to call method without create a new object class
    return Complex(c1._real - c2._real, c1._imaginary - c2._imaginary);
  }

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this._real == other._real && this._imaginary == other._imaginary;
  }

  @override
  String toString() {
    if (_imaginary > 0) {
      return '${_real} + ${_imaginary}i';
    }
    return '${_real} - ${_imaginary.abs()}i';
  }
}

// Quaternion
// u + vi + xj

// i = j = sqrt(-1)

class Quaternion extends Complex {
  num jImage;

  Quaternion(num real, num imaginary, this.jImage) : super(real, imaginary);

  String toString() {
    if (this.jImage > 0 && this._imaginary > 0) {
      return '${this._real} + ${this._imaginary} + ${this.jImage}';
    } else if (this.jImage > 0 && this._imaginary < 0) {
      return '${this._real} - ${this._imaginary.abs()} + ${this.jImage}';
    } else {
      return '${this._real} - ${this._imaginary.abs()} - ${this.jImage.abs()}';
    }
  }
}
