abstract class FileHandler {
void open (String filePath);
}

abstract class ATextFileHandler extends FileHandler{
void readText();
}

abstract class AAudioFileHandler extends FileHandler{
void playAudio();
}


class TextFileHandler implements ATextFileHandler {
String content = 'Пример текста';
@override
void open (String filePath){
print('Открываем текстовый файл: $filePath');
 }
@override
void readText(){
print('Читаем текст: $content');
 }
}

class AudioFileHandler implements AAudioFileHandler {
@override
void open (String filePath){
print('Открываем аудиофайл: $filePath');
 }
@override
void playAudio(){
print('Воспроизводим аудио...');
 }
}

void main(){
 var  textFile = TextFileHandler(); 
  textFile.open('book.txt');
  textFile.readText();
  
var audioFile = AudioFileHandler();
  
  audioFile.open('music.mp3');
  audioFile.playAudio();
  
}