class FileConverter {
  void convertToPDF (String filePath) {
    print('Конвертируем $filePath в PDF...');
  }
  
   void convertToDOCX (String filePath) {
    print('Конвертируем $filePath в DOCX...');
  }
  
     void convertToJPG (String filePath) {
    print('Конвертируем $filePath в JPG...');
  }
}


void main(){
  FileConverter converter = FileConverter();
  converter.convertToPDF('RESUME.DOC');
  converter.convertToJPG('картинка.bmp'); 
}