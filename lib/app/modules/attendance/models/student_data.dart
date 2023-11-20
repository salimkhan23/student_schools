class StudentData {
  String roll;
  String name;
  bool isPresent;
  bool isleave;
  String msg;

  StudentData({
    required this.roll,
    required this.name,
    this.isPresent = false,
    this.isleave = false,
    this.msg = '',
  });
}
