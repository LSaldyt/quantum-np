/*
* A simple version of the knapsack problem, as per
* https://en.wikipedia.org/wiki/Knapsack_problem
*
* Wt = 15kg (Knapsack capacity)
*
* Potential items:
*
* A = $4,  12kg
* B = $2,   1kg
* C = $2,   2kg
* D = $1,   1kg
* E = $10,  4kg
*
* Solution (0-1 knapsack):
*
* V = $15
*
*  Given a proposed selection of items, all you have to do to verify the
*  proposal is to add up the weights and see you get at most W, and add up
*  the values and see you get at least V
*
*   The decision problem form of the knapsack problem (Can a value of at least V be achieved without exceeding the weight W?) is NP-complete, thus there is no known algorithm both correct and fast (polynomial-time) on all cases.
*
*   While the decision problem is NP-complete, the optimization problem is NP-hard, its resolution is at least as difficult as the decision problem, and there is no known polynomial algorithm which can tell, given a solution, whether it is optimal (which would mean that there is no solution with a larger V, thus solving the NP-complete decision problem).
*
* Author: Lucas Saldyt (lucassaldyt@gmail.com)
*/ 

module knapsack (A, B, C, D, E, valid);
    input A, B, C, D, E;
    output valid;

    wire [31:0] min_value  = 32'd15;
    wire [31:0] max_weight = 32'd16;
    wire [31:0] total_value = 32'd4  * A
                            + 32'd2  * B
                            + 32'd2  * C
                            + 32'd1  * D
                            + 32'd10 * E;
    wire [31:0] total_weight = 32'd12 * A  
                             + 32'd1  * B 
                             + 32'd2  * C 
                             + 32'd1  * D 
                             + 32'd4  * E;

    assign valid = total_value >= min_value && total_weight <= max_weight;
endmodule