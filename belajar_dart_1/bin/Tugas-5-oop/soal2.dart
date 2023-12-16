import 'dart:math';

class PersegiPanjang {
  double _panjang = 0;
  double _lebar = 0;

  void setPanjang(double value) {
    _panjang = value > 1 ? value : value * -1;
  }

  double getPanjang() => _panjang;

  void setLebar(double value) {
    _lebar = value > 1 ? value : value * -1;
  }

  double getLebar(double value) => _lebar;

  double HitungLuas() {
    return _panjang * _lebar;
  }
}

class Lingkaran {
  double r = 0;
  final double phi = 3.14;

  void setR(double value) {
    r = value > 0 ? value : value * -1;
  }

  double getR() {
    return r;
  }

  double Luas() {
    return phi * pow(r, 2);
  }
}

void main() {
  var lingkaran = Lingkaran();
  lingkaran.setR(2);
  print(lingkaran.Luas());
}
