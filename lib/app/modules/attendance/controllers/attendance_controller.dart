import 'package:get/get.dart';
import 'package:student_schools/app/modules/attendance/models/student_data.dart';
import 'package:student_schools/app/modules/attendance/models/student_section.dart';

class AttendanceController extends GetxController {
  RxString value = RxString("Class");
  RxString value1 = RxString("Section");
  RxString value2 = RxString("Group");
  RxString value3 = RxString("Years");

  RxList<StudentSection> studentSectionList = <StudentSection>[
    StudentSection(classData: 'Class', sectionData: 'abcd', yeares: '2023'),
    StudentSection(classData: 'Class', sectionData: 'abcd', yeares: '2023'),
    StudentSection(classData: 'Class', sectionData: 'abcd', yeares: '2023'),
    StudentSection(classData: 'Class', sectionData: 'abcd', yeares: '2023'),
    StudentSection(classData: 'Class', sectionData: 'abcd', yeares: '2023'),
  ].obs;

  RxList attendanceTabList = [
    'Class',
    // 'Data2',
    // 'Data3',
    // 'Data4',
    // 'Data5',
    // 'Data6',
    // 'Data7',
    // 'Data8',
    // 'Data9',
    // 'flutter',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
  ].obs;

  RxList attendance01 = [
    'Section',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
  ].obs;
  RxList attendance02 = [
    'Group',
    'Computer',
    'Civil',
    'Elictrical',
    'Macanical',
    'Data Comunication',
  ].obs;

  RxList attendance03 = [
    'Years',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ].obs;
  RxList<StudentData> studentDataList = <StudentData>[
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
  ].obs;

  RxBool isAllPresent = false.obs;

  present({required int intex, required bool present}) {
    studentDataList[intex].isPresent = present;
    studentDataList.refresh();
  }

  allPresent(bool value) {
    isAllPresent.value = value;
    for (var element in studentDataList) {
      element.isPresent = value;
    }
    studentDataList.refresh();
  }
}
