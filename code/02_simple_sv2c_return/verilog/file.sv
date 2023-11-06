module top;
    import "DPI-C" function int  myCFunc1();
    import "DPI-C" function int  myCFunc2( input int A, output int B );
    import "DPI-C" function real mySin( input real C);
    import "DPI-C" function real myCos( input real C);
    import "DPI-C" function real myTan( input real C);

    integer iA, iB, iC;
    shortreal fF;
    real dD, dE;
    initial begin
      iA = myCFunc1();
      //return value of 5
      $display(" ------------ myCFunc1 --------- ");
      $display("value of iA = %d", iA);
      $display("----------------------------------");
      
      //iA value is 5
      //passing as a input in myCFunc2 and output store in iB
      iC = myCFunc2(iA, iB);
      
      //iA print 5
      //iB print 2 because int number 5/2 = 2.5
      //iC print A*2 = 10 as per C function line number 7 
      $display(" ------------ myCFunc2 --------- ");
      $display("%m %d %d %d", iA, iB, iC);
      $display("----------------------------------");
      
      dD = 3.1415/2.0;
      //using math function we can find sin cos tan and other functions
      $display(" ------------ myCFunc4 --------- ");
      $display("%m sin:%f cos:%f tan:%f", mySin(dD), myCos(dD), myTan(dD));
      $display("----------------------------------");
      
      $finish;
    end
endmodule
