typedef enum {GREEN ,YELLOW, RED, BLUE} colors;

module tb;
  initial begin
    colors color;
    
    color = YELLOW;
    $display ("color.next() = %0d", color.next());
    $display ("color.first()= %0d", color.first());
    $display ("color.last() = %0d", color.last());
    $display ("color.prev() = %0d", color.prev());		
    $display ("color.num()  = %0d" ,color.num());		//it will print total count of enum 
    $display ("color.name() = %0s", color.name());		// it will return the name 
    $display ("color.name() = %0d", color); 			// it will return the index value of current element 
              
  end
endmodule