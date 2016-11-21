#Programming Languages 2016 - Homework 5                              
                                                                       
## Goal                                                                
The goal of this homework is to build a type checker for "LETREC" language.
For the details, please refer to "hw5.pdf". 

## Specification                                                       
- Implement the ***gen_equations*** and ***solve*** functions in "type.ml".                     
- Do not modify the types and names of items in the "type.ml" except for the ***gen_equations*** and ***solve*** functions.
- You can use the environment implementation for the type checker as you did in hw4(Check TEnv module in "type.ml").
- During execution, raise the exception *TypeError* whenever exception handling is needed.
  - You should use above pre-defined exception that we provided.         
  - You can raise the exception as follows: ```raise TypeError``` 
                                                                       
## Compilation and Execution                                           
Compile and execute the type checker as follows:                        
```                                                                    
  make               (* for compilation *)                            
  ./run test/let1.m  (* running the type checker *)                    
```                                                                    
                                                                       
## How to Submit                                                       
Submit the single file "type.ml" via Blackboard. Note that students who submitted uncompilable codes will get zero point.
