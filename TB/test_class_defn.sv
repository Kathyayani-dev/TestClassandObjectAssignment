# code for test_class_defn.sv
  ...
     module test_class_defn;


        // Declare class account_c
                // Within class account_c
        class account_c;
                // Declare variable balance as int type
        int balance;
                // Write a function summary that returns balance from it
        function int summary();
                return balance;
        endfunction
                // Write a task deposit with pay (type int) as the input argument and add pay with the balance
        task deposit;
                input int pay;
                balance=balance+pay;
        endtask
        endclass

        // Declare a handle for class account_c
        account_c acnt_h;
        // Within initial block
        initial
        begin
                // Create an instance of the class account_c
                acnt_h=new();
                // Call method deposit and pass pay value as the input argument and call method summary to display balance
                acnt_h.deposit(500);
                $display("new balance=%p",acnt_h.summary);
                $display("new balance=%p",acnt_h.balance);


        end
endmodule
...
