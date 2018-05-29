public aspect HelloAspectJ {	
	
	long startTime;
    // Define a Pointcut is
    // collection of JoinPoint call sayHello of class HelloAspectJDemo.
    pointcut callSayHello(): call(* HelloAspectJDemo.sayHello()); 
    before() : callSayHello() {
        System.out.println("Before call sayHello");
    } 
    after() : callSayHello()  {
        System.out.println("After call sayHello");
    }  
    
    
    //se deberia crear un nuevo pointcut que llame al metodo greeting
    //los join points serian el metodo greeting() linea 6 y la instancia name de linea 7 
    
    //cambios:
    pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    before() : callGreeting(){
        System.out.println("Before call greeting");
        startTime = System.currentTimeMillis();
    } 
    after() : callGreeting()  {
    	long estimatedTime=System.currentTimeMillis()-startTime;
        System.out.println("After call greeting");
        System.out.println(estimatedTime);
    }  
    
}  
