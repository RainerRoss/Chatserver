//------------------------------------------------------------------//
// Procedure - Get Date from DateString                             //
// Format: 'Fri, 02 Jan 2015 15:25:22 GMT'                          //
//------------------------------------------------------------------//
   dcl-proc getdate export;                                           
   dcl-pi *n           date;                                          
           ##datstr    like(h#datstr) const;                          
   end-pi;                                                                                                                              
   dcl-ds  dsstr       qualified;               // DateString      
            *n         char(05);                                   
            d#day      char(02);                                   
            *n         char(01);                                   
            d#mon      char(03);                                   
            *n         char(01);                                   
            d#year     char(04);                                   
   end-ds;                                                         
                                                                   
   dcl-s   p#ind       zoned(02);               // Index           
   dcl-s   p#month     char(02);                // Month           
   dcl-s   p#datstr    char(10);                // Date yyyy-mm-dd 
   dcl-s   p#date      date;                    // Date            
                                                                   
     dsstr    = ##datstr;                       // DateString      
     p#ind    = %lookup(dsstr.d#mon:t#month);                      
     p#month  = %editc(p#ind:'X');                                    
     p#datstr = dsstr.d#year + '-' + p#month + '-' + dsstr.d#day;     
     p#date   = %date(p#datstr:*iso);                                 
     return p#date;                                                   
                                                                      
   end-proc;                                                          
//------------------------------------------------------------------//                                                                  
