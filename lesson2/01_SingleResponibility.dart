class UserManager {
  var userData = <String, dynamic>{};

  void processUserData(Map<String, dynamic> userData) {
      //Валидация данных
      checkUserData(userData);
     //Преобразованеи данных
      changeUserData(userData);
      //Сохранение данных
      saveUserData(userData);
 
    //Логирование
    print('Данные пользователя успешно обработаны и сохранены');
  }

  void checkUserData(Map<String, dynamic> userData) {
    //Валидация данных
    if (userData['name'] == null || userData['name'].isEmpty) {
      throw Exception('Имя не может быть пустым');
    }
    if (userData['age'] == null || userData['age'] < 0) {
      throw Exception('Возраст пользователя не може быть отрицательным');
    }
  }

  void changeUserData(Map<String, dynamic> userData) {
    userData['name'] = userData['name'].toString().toUpperCase();
    userData['age'] = userData['age'] + 1;
  }

  void saveUserData(Map<String, dynamic> userData) {
    // Здесь может быть код для сохранения данных в базу данных или файл
    print('Данные сохранены: $userData');
  }
}

void main() {
  final userManager = UserManager();
  userManager.processUserData({'name': 'Alice', 'age': 25});
  //  userManager.saveUserData(userManager.userData);
}
