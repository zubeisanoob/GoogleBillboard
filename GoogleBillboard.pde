public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{  
  // basic program it works and is boring

  for (int i = 0; i < e.length() - 10; i++) {
    int count = 0;
    String stringed = e.substring(i, i+10);
    Double numbers = Double.parseDouble(stringed);
    if (numbers < 5) {
      continue;
    } else {
      if (isPrime(numbers) == true) {
      System.out.println("first 10-digit prime found in consecutive digits of \'e\': " + stringed);
      break;
    }
    }
  }

  // NOW THIS BELOW. THIS IS GREAT.
  // I misunderstood the problem and thought out of each set of 10 numbers, each
  // number in that set had to be prime. I wrote a really stupid for loop and
  // got it working, but when it didn't return any numbers with 10 primes in them,
  // I reread the problem and realized I solved the wrong thing. My code works as
  // intended, but not for the right problem. I thought you would appreciate this.
  /*
    for(int i = 0; i < e.length() - 10; i++) {
      int count = 0;
      String stringed = e.substring(i, i+10);
      for (int s = 0; s < stringed.length(); s++) {
        if (stringed.substring(s, s+1).equals(".") == false) {
          Double num = Double.parseDouble(stringed.substring(s, s+1));
          int intNum = Integer.parseInt(stringed.substring(s, s+1));
          
          //System.out.println(isPrime(num));
          if (isPrime(intNum) == true) {
            count++;
          }
        }
      }
      if (count == 9) {
        System.out.println(stringed);
      }
    }
    */
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   // rudimentary isPrime function that I took from my isPrime on coding bat. Nothing special.
    boolean primeStatus = true;
    if (dNum <= 1) {
      primeStatus = false;
    } else {
      for (int i = 2; i < (int)Math.sqrt(dNum) + 1; i++) {
      if (dNum % i == 0) {
        primeStatus = false;
      }
    }
    }
    
    return primeStatus;
} 
