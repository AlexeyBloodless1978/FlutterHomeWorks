abstract class Converter {
  void convert(String filePath);
}

class PdfConverter extends Converter {
  void convert(String filePath) {
    print('Конвертируем $filePath в PDF...');
  }
}

class DocxConverter extends Converter {
  void convert(String filePath) {
    print('Конвертируем $filePath в docx...');
  }
}

class FileConverter {
  void convertFile(Converter file, String filePath) {
    file.convert(filePath);
  }
}


void main() {

  var fileConverter=FileConverter();
  fileConverter.convertFile(PdfConverter(),'text.txt');
  fileConverter.convertFile(DocxConverter(),'text.txt');
}