function test_generate_basis

in_num_sites = 4;
in_num_up = 3;
in_num_dn = 2;

[ out_combinedBasis, out_TOTAL_ALL_STATES, out_TOTAL_UP_STATES, out_TOTAL_DN_STATES, out_upStates, out_dnStates ] = generateBasis( in_num_sites, in_num_up, in_num_dn );

assertEqual(out_TOTAL_UP_STATES, 4); 
assertEqual(out_TOTAL_DN_STATES, 6); 
assertEqual(out_TOTAL_ALL_STATES, 24); 

assertEqual(out_upStates, ...
     [7     0     1     1     1; ...
     11     1     0     1     1; ...
     13     1     1     0     1; ...
     14     1     1     1     0]);...
     
assertEqual(out_dnStates,...     
     [3     0     0     1     1;...
      5     0     1     0     1;...
      6     0     1     1     0;...
      9     1     0     0     1;...
     10     1     0     1     0;...
     12     1     1     0     0]);
assertEqual(out_combinedBasis,...
    [1     7     3     0     1     1     1     0     0     1     1;...
     2     7     5     0     1     1     1     0     1     0     1;...
     3     7     6     0     1     1     1     0     1     1     0;...
     4     7     9     0     1     1     1     1     0     0     1;...
     5     7    10     0     1     1     1     1     0     1     0;...
     6     7    12     0     1     1     1     1     1     0     0;...
     7    11     3     1     0     1     1     0     0     1     1;...
     8    11     5     1     0     1     1     0     1     0     1;...
     9    11     6     1     0     1     1     0     1     1     0;...
    10    11     9     1     0     1     1     1     0     0     1;...
    11    11    10     1     0     1     1     1     0     1     0;...
    12    11    12     1     0     1     1     1     1     0     0;...
    13    13     3     1     1     0     1     0     0     1     1;...
    14    13     5     1     1     0     1     0     1     0     1;...
    15    13     6     1     1     0     1     0     1     1     0;...
    16    13     9     1     1     0     1     1     0     0     1;...
    17    13    10     1     1     0     1     1     0     1     0;...
    18    13    12     1     1     0     1     1     1     0     0;...
    19    14     3     1     1     1     0     0     0     1     1;...
    20    14     5     1     1     1     0     0     1     0     1;...
    21    14     6     1     1     1     0     0     1     1     0;...
    22    14     9     1     1     1     0     1     0     0     1;...
    23    14    10     1     1     1     0     1     0     1     0;...
    24    14    12     1     1     1     0     1     1     0     0]);
end

