typedef string str_da [];

module tb;

  str_da list[$];
  initial begin
    str_da marvel = '{"spiderman", "Hulk", "Captian America", "Iron man"};
    str_da dcworld = '{"batman","superman"};

    //push the previous created dynamic array to queue 
    list.push_back(marvel);
    list.push_back(dcworld);

    foreach (list[i])
      foreach (list[i][j])
        $display("list[%0d][0%0d] = %s", i, j, list[i][j]);
    $display("list = %p", list);

  end



endmodule

