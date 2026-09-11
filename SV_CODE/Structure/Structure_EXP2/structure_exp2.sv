typedef struct {
    int street_no;
    string city;
} addr_t;

typedef struct {
    int id;
    string name;
    addr_t addr;
} person_t;


module person_processor(
    input  person_t in_person,
    output person_t out_person
);

always_comb begin
    out_person.id              = in_person.id;
    out_person.name            = in_person.name;
    out_person.addr.street_no  = in_person.addr.street_no;
    out_person.addr.city       = in_person.addr.city;
end

endmodule

module tb_person_processor;

person_t in_person;
person_t out_person;

person_processor dut (
    .in_person(in_person),
    .out_person(out_person)
);

initial begin
    in_person = '{
        id   : 101,
        name : "raju",
        addr : '{street_no:25, city:"Banglore"}
    };

    #10;

    $display("-------input person---------");
    $display("%p", in_person);

    $display("-------output person---------");
    $display("%p", out_person);
end

endmodule
