public aspect GreetingAspectJ{  
	
    //se deberia crear un nuevo pointcut que llame al metodo greeting
    //los join points serian el metodo greeting() linea 6 y la instancia name de linea 7 
    
    //cambios:
	
	long startTime;
    pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    before() : callGreeting(){
        System.out.println("Before call greeting");
        startTime = System.nanoTime();
    } 
    after() : callGreeting()  {
    	long estimatedTime=System.nanoTime()-startTime;
        System.out.println("After call greeting");
        System.out.println(estimatedTime);
    }
}