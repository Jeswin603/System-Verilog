/*Declare a unbounded queue of int named expected_q. Push the values 10,20,30
onto it usinng push_back(), then pop and print each value in order using 
pop_front() until the queue is empty */

module EXP4;

  int expected_q [$];

  initial begin
    expected_q.push_back(10);
    expected_q.push_back(20);
    expected_q.push_back(30);

    while(expected_q.size()>0)begin
      $display("popped %0d remaning size = %0d", expected_q.pop_front(),expected_q.size());
    end
  end


endmodule
