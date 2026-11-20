# code for test_obj_assignment.sv
  ...
      module test_obj_assignment;


        // Declare class packet

                // Within the class packet
                // Declare the below class properties
                // data (bit type, size 4)
                // addr (bit type, size 16)
                // mem  (bit type, size 16)
        class packet;
                bit[3:0]data;
                bit[15:0]addr;
                bit[15:0]mem;
        endclass: packet

        // Declare two handles for the packet class "pkt_h1" and "pkt_h2"
        packet pkt_h1,pkt_h2;

        // Within initial block
        // Construct pkt_h1 object
        // Assign random values to the addr, data and mem of pkt_h1 object
        // Display the object pkt_h1
        // Assign pkt_h1 to pkt_h2

        initial
        begin
                pkt_h1=new();
                pkt_h1.addr=10;
                pkt_h1.data=8;
                pkt_h1.mem=30;
                $display("%p",pkt_h1);
                pkt_h2=pkt_h1;

                $display("\nAfter assigning one object to the other,");
                // Display the objects pkt_h1 & pkt_h2
                $display("%p",pkt_h1);
                $display("%p",pkt_h2);
                // Make changes to address and data using handle pkt_h2
                pkt_h2.addr=40;
                pkt_h2.data=15;
                $display("After changing the values of properties with one handle,");

                // Display the object pkt_h1 & pkt_h2
                $display("%p",pkt_h1);
                $display("%p",pkt_h2);

                // observe that pkth1 and pkth2 will display the same contents because,
                // both the handles point to the same object
        end
endmodule
