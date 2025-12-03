abstract class FileProcessor {
  void upload(String filePath);
}

abstract class ConvertedFileProcessor extends FileProcessor {
  void convert(String filePath);
}

class PDFConverter extends ConvertedFileProcessor {
  @override
  void upload(String filePath) {
    print('Загружаем PDF-файл: $filePath');
  }

  @override
  void convert(String filePath) {
    print('Конвертируем $filePath в PDF...');
  }
}

class EncryptedFile extends FileProcessor {
  @override
  void upload(String filePath) {
    print('Загружаем зашифрованный файл: $filePath');
  }
}

void main() {
  var pdfFile = PDFConverter();
  pdfFile.upload('doc.txt');
  pdfFile.convert ('doc.txt');

 var encryptFile = EncryptedFile();
  encryptFile.upload('password.psw');
}
