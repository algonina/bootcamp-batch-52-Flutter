void main() {
  var d = rangeWithStep(10, 10, 2);
  print(d);
}

List rangeWithStep(int start, int finish, int step) {
  List<int> data = [];

  int startNum = start > finish ? finish : start;
  int finishNum = finish > start ? finish : start;
  if (start != finish) {
    for (var i = startNum; i < finishNum;) {
      data.add(i);
      i = i + step;
    }
    if (start > finish) {
      data.sort((a, b) => b.compareTo(a));
    }
  }
  return data;
}
