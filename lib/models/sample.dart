class Room {
  Room();
  final int _numberOfBeds = 90;

  int getNumberOfBeds(int age, {required String name, int? number}) {
    return _numberOfBeds;
  }

  // int get getNumberOfBeds => _numberOfBeds;
}

class House {}

void main() {
  Room room1 = Room();
  room1.getNumberOfBeds(7, number: 8, name: "544");
}
