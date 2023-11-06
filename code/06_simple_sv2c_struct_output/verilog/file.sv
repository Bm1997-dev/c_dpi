module top();
    typedef struct {
        byte       A;
        int        B;
        shortreal  C;
        real       D;
    } pkt_t;

    import "DPI-C" function int myFunc(inout pkt_t v);
    
    export "DPI-C" function     checkretval;

    pkt_t  pkt;
    int ret;
    
    function int mySVFunc();
      if(ret == 0);
        $display("------------------- Pass")
      else
        $display("-------------------FAIL");
        
    endfunction
    
    initial begin
       ret = myFunc(pkt);
       #1; $write("\n");
       checkretval();
       if (ret!=0) $display("%m Failed ", ret);
       else begin
            $display("%m pkt.A = %s", pkt.A);
            $display("%m pkt.B = %d", pkt.B);
            $display("%m pkt.C = %f", pkt.C);
            $display("%m pkt.D = %f", pkt.D);
       end
    end
endmodule
