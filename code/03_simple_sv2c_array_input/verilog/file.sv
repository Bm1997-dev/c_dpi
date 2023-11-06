module top();
    // import "DPI-C" function int myFunc(input int v[][]);
    import "DPI-C" function int myFunc(input int v[]);

    // int arr[4][4];
    int arr[4];
    int dynArr[];
    int ret;
    initial begin
        // foreach(arr[i]) begin
        for(int j=0; j<4; j++) begin
          arr[j] = {$random};
        // end
        end
        // arr = {4, 5, 6, 7};
        ret = myFunc(arr);
        if (ret==64) $display("%m OK ", ret);
        else        $display("%m Failed ", ret);

        dynArr = new[6];
        dynArr = {8, 9, 10, 11, 12, 13};
        ret = myFunc(dynArr);
        if (ret==6) $display("%m OK ", ret);
        else        $display("%m Failed ", ret);

        arr = {127, 255, 255, -128};
        ret = myFunc(arr);
        if (ret==4) $display("%m OK ", ret);
        else        $display("%m Failed ", ret);
    end
endmodule
