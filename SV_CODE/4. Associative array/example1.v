// Code your testbench here
// or browse Examples
module assosciative_array;
  int data[string];
  
  initial begin
    data["first"]  = 1;
    data["second"] = 2;
    data["thrid"]  = 3;
    
    foreach(data[key])begin
      $display("data[%s] = %0d",key,data[key]);
    end
  end
  
  endmodule