class StudentSection {
  String classData;
  String sectionData;
  String yeares;
  bool group;

  StudentSection({
    required this.classData,
    required this.sectionData,
    required this.yeares,
    this.group = false,
  });
}
