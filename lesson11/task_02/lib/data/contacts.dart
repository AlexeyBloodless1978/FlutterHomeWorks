// data/contacts_data.dart
import '../models/contact.dart';

class ContactsData {
  // Статический список контактов
  static List<Contact> get contacts => [
    Contact(
      name: 'Анна Иванова',
      phone: '+375 (29) 123-45-67',
      email: 'anna@example.com',
      position: 'Менеджер по продажам',
      description:
          'Отвечает за взаимодействие с клиентами и заключение договоров. Работает в компании 3 года.',
    ),
    Contact(
      name: 'Иван Петров',
      phone: '+375 (29) 234-56-78',
      email: 'ivan@example.com',
      position: 'Разработчик',
      description:
          'Full-stack разработчик с опытом работы 5 лет. Специализируется на мобильных приложениях.',
    ),
    Contact(
      name: 'Мария Сидорова',
      phone: '+375 (29) 345-67-89',
      email: 'maria@example.com',
      position: 'Дизайнер UI/UX',
      description:
          'Создает пользовательские интерфейсы и занимается UX исследованиями.',
    ),
    Contact(
      name: 'Алексей Смирнов',
      phone: '+375 (29) 456-78-90',
      email: 'alexey@example.com',
      position: 'Технический директор',
      description:
          'Руководит техническим отделом, отвечает за архитектуру и развитие продуктов.',
    ),
    Contact(
      name: 'Елена Кузнецова',
      phone: '+375 (29) 567-89-01',
      email: 'elena@example.com',
      position: 'Маркетолог',
      description:
          'Занимается продвижением продуктов, аналитикой и стратегией маркетинга.',
    ),
    Contact(
      name: 'Дмитрий Васильев',
      phone: '+375 (29) 678-90-12',
      email: 'dmitry@example.com',
      position: 'Тестировщик',
      description:
          'Обеспечивает качество продукта, занимается автоматизированным тестированием.',
    ),
    Contact(
      name: 'Ольга Николаева',
      phone: '+375 (29) 789-01-23',
      email: 'olga@example.com',
      position: 'Аналитик данных',
      description:
          'Анализирует бизнес-метрики и предоставляет insights для принятия решений.',
    ),
    Contact(
      name: 'Сергей Федоров',
      phone: '+375 (29) 890-12-34',
      email: 'sergey@example.com',
      position: 'Системный администратор',
      description: 'Обеспечивает работоспособность IT инфраструктуры компании.',
    ),
  ];

  /*
  // Метод для поиска контактов
  static List<Contact> searchContacts(String query) {
    if (query.isEmpty) return contacts;

    final lowerQuery = query.toLowerCase();
    return contacts.where((contact) {
      return contact.name.toLowerCase().contains(lowerQuery) ||
          contact.position.toLowerCase().contains(lowerQuery) ||
          contact.email.toLowerCase().contains(lowerQuery);
    }).toList();
  }
*/
  // Метод для получения контакта по имени
  static Contact? getContactByName(String name) {
    try {
      return contacts.firstWhere((contact) => contact.name == name);
    } catch (e) {
      return null;
    }
  }

  // Метод для группировки контактов по первой букве имени
  static Map<String, List<Contact>> getGroupedContacts() {
    final Map<String, List<Contact>> grouped = {};

    for (var contact in contacts) {
      final firstLetter = contact.name[0].toUpperCase();
      if (!grouped.containsKey(firstLetter)) {
        grouped[firstLetter] = [];
      }
      grouped[firstLetter]!.add(contact);
    }

    // Сортируем ключи по алфавиту
    final sortedKeys = grouped.keys.toList()..sort();
    final Map<String, List<Contact>> sortedMap = {};
    for (var key in sortedKeys) {
      sortedMap[key] = grouped[key]!;
    }

    return sortedMap;
  }
}
