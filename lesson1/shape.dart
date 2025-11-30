import 'dart:math';
void main() { 
  
  var circle1=Circle(4);  
  print (circle1.area());
  print (circle1.perimetr());
  
  var rectangle1=Rectangle(10,2);  
  print (rectangle1.area());
  print (rectangle1.perimetr());
  
  var triangle1=Triangle(10,10,5);  
  print (triangle1.area());
  print (triangle1.perimetr());
  
  }


class Shape  { 
final pi =3.1416; 
  
 area(){
 return 'area'; 
}
  perimetr(){
 return 'perimetr' ;   
}
} 
  
  class Circle extends Shape { 
    double radius;
    Circle(this.radius);
    
    @override    
      area(){      
      return  pi*radius*radius;      
    }     
    
      @override    
    perimetr(){      
      return 2*pi*radius;      
    }   
  }

  class Rectangle extends Shape { 
    double weight;
    double height;
    Rectangle(this.weight, this.height);
    
    @override    
      area(){      
      return  weight*height;      
    }     
    
      @override    
    perimetr(){      
      return 2*weight+2*height;      
    } 
  }
     
  class Triangle extends Shape { 
    double side1;
    double side2;
    double side3;
    Triangle(this.side1, this.side2,this.side3);
    
    @override    
      area(){ 
       double perimetr2;
        perimetr2= perimetr()/2;
      return  sqrt(perimetr2*(perimetr2-side1)*(perimetr2-side2)*(perimetr2-side3));      
    }     
    
      @override    
    perimetr(){      
      return side1+side2+side3;      
    }     
  }
