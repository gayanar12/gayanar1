package typingcalculator1;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Locale;
import java.util.Random;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

public class typingcalculator1 {
     static String [] words= {"envelope", "cantelope", "the", "hello", "microphone", "elephant", "biscuit", "hammer", "went", "cap"};
	public static void main(String[] args) throws InterruptedException {
    System.out.println("3");
    TimeUnit.SECONDS.sleep(1);
    System.out.println("2");
    TimeUnit.SECONDS.sleep(1);
    System.out.println("1");
    TimeUnit.SECONDS.sleep(1);
    Random rand = new Random();
    for(int i=0;i<10;i++) {
    System.out.print(words[rand.nextInt(9)] +" " );
	}
    System.out.println();
   

double start =LocalTime.now().toNanoOfDay();
	
	
	Scanner scan =new Scanner(System.in);
    String typedwords =scan.nextLine();
    
	double end =LocalTime.now().toNanoOfDay();
    double elapsedtime = end-start;
    double seconds=elapsedtime/1000000000.0;
    int numchar =typedwords.length();
    //(x characters/5)/1min=y wpm
    
    
	int wpm=(int) ((((double) numchar /5)/seconds)*60);
    System.out.println("your wpm is"+wpm+"!");
   
    
}   
}
