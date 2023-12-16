class Segitiga {
  double _alas, _tinggi;

  final double _setengah = 0.5;

  Segitiga(this._alas, this._tinggi) {}

  double HitungLuas() {
    return _setengah * _alas * _tinggi;
  }
}

void main() {
  var segitiga = Segitiga(2, 5);
  print(segitiga.HitungLuas());
}
