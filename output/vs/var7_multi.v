
module var7_multi (A, B, C, D, E, F, G, valid);
    input A, B, C, D, E, F, G;
    output valid;

    wire [7:0] min_value = 8'd58;
    wire [7:0] max_weight = 8'd60;
    wire [7:0] max_volume = 8'd60;
wire [7:0]  total_value = 
        A * 8'd4
      + B * 8'd8
      + C * 8'd0
      + D * 8'd20
      + E * 8'd10
      + F * 8'd12
      + G * 8'd18;

    wire [7:0]  total_weight = 
        A * 8'd28
      + B * 8'd8
      + C * 8'd27
      + D * 8'd18
      + E * 8'd27
      + F * 8'd28
      + G * 8'd6;

    wire [7:0]  total_volume = 
        A * 8'd27
      + B * 8'd27
      + C * 8'd4
      + D * 8'd4
      + E * 8'd0
      + F * 8'd24
      + G * 8'd4;

assign valid = ((total_value >= min_value) && (total_weight <= max_weight) && (total_volume <= max_volume));
endmodule
