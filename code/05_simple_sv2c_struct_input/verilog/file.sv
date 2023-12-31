typedef struct {
    byte       A;
    int        B;
    shortreal  C;
    real       D;
} pkt_t;

module tb_top();
    import "DPI-C" function int myFunc(inout pkt_t v);

    pkt_t  pkt;
    int ret;
    initial begin
       pkt.A = 8'h45;
       pkt.B = 100;
       pkt.C = 100.1;
       pkt.D = 45.214569;
       ret = myFunc(pkt);
       #1; $write("\n");
       if (ret==0) $display("%m.OK ", ret);
       else        $display("%m Failed ", ret);
    end
endmodule
