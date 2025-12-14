void main(){
print(filterEvenNumbers([1,2,5,4]));

List<Student> students = [
  Student('Степан', 18, 5.8),
  Student('Иван', 18, 9.2),
  Student('Юрий', 19, 3.5),
  Student('Юлия', 17, 7.4),
];

print(students.toString());
print(sortStudentsByGPA(students).toString());
}

List<int> filterEvenNumbers(List<int> inList){
  List<int> outList=[];
  for (int i=0;i<inList.length;i++){
    if (inList[i].isEven){
      outList.add(inList[i]);
    }
  }
  return outList;
}

class Student {
  final String name;
  final int age;
  final double averageScore;
  const Student(this.name, this.age, this.averageScore);

  @override
  String toString() {
    return 'Студент (Имя: $name, возраст: $age, средний балл: $averageScore)';
  }
}

List<Student> sortStudentsByGPA(List<Student> studentsIn){
  studentsIn.sort((a,b) => b.averageScore.compareTo(a.averageScore));
  return studentsIn;
}