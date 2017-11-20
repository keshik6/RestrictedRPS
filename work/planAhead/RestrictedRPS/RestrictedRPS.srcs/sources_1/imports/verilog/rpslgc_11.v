/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rpslgc_11 (
    input [1:0] c1,
    input [1:0] c2,
    output reg [2:0] rslt
  );
  
  
  
  reg r1;
  
  reg r2;
  
  reg p1;
  
  reg p2;
  
  reg s1;
  
  reg s2;
  
  always @* begin
    r1 = c1[0+0-:1] & (c1[0+0-:1] ^ c1[1+0-:1]);
    p1 = c1[0+0-:1] & c1[1+0-:1];
    s1 = c1[1+0-:1] & (c1[0+0-:1] ^ c1[1+0-:1]);
    r2 = c2[0+0-:1] & (c2[0+0-:1] ^ c2[1+0-:1]);
    p2 = c2[0+0-:1] & c2[1+0-:1];
    s2 = c2[1+0-:1] & (c2[0+0-:1] ^ c2[1+0-:1]);
    rslt[0+0-:1] = (r1 & s2) | (s1 & p2) | (p1 & r2);
    rslt[1+0-:1] = (r2 & s1) | (s2 & p1) | (p2 & r1);
    rslt[2+0-:1] = (r1 & r2) | (s1 & s2) | (p1 & p2);
  end
endmodule