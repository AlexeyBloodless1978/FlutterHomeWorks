import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final int index;

  const NewsCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Image.network(
                fit: BoxFit.contain,
               // 'https://loremflickr.com/200/300?random=${DateTime.now().microsecondsSinceEpoch + index}',
               // 'https://loremflickr.com/200/300/business?lock=$index',
                'https://loremflickr.com/200/300/business?random=${DateTime.now().microsecondsSinceEpoch + index}',
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.broken_image,
                      size: 70,
                      color: Colors.grey[500],
                    ),
                  );
                },
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Заголовок новости '+(index+1).toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 5),
            child: Text(
              'Сегодня ${formatTime(DateTime.now(), format: 'HH:mm')}',
              style: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String formatTime(DateTime dateTime, {String format = 'dd.MM.yyyy HH:mm'}) {
  return format
      .replaceAll('yyyy', dateTime.year.toString())
      .replaceAll('MM', dateTime.month.toString().padLeft(2, '0'))
      .replaceAll('dd', dateTime.day.toString().padLeft(2, '0'))
      .replaceAll('HH', dateTime.hour.toString().padLeft(2, '0'))
      .replaceAll('mm', dateTime.minute.toString().padLeft(2, '0'))
      .replaceAll('ss', dateTime.second.toString().padLeft(2, '0'));
}

