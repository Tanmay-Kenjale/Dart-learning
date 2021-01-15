class Rectangle {
  double _height;
  double _width;

  Rectangle(double height, double width) {
    this._height = height;
    this._width = width;
  }

  double getHeight() {
    return this._height;
  }

  double getWidth() {
    return this._width;
  }

  double calcArea() {
    return this._height * this._width;
  }

  double perimeter() {
    return 2 * (this._height + this._width);
  }
}