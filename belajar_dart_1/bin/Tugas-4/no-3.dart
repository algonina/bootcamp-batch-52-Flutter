void main() {
  var input = [
    ["001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];

  dataHandling(input);
}

void dataHandling(List param) {
  for (List el in param) {
    print("No ID: " + el[0]);
    print("Nama Lenkap: " + el[1]);
    print("TTL: " + el[2] + el[3]);
    print("Hobi: " + el[4]);
    print("=========================");
  }
}
