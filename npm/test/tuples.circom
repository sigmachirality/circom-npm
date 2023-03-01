pragma circom 2.1.0;

template A(n){
   signal input a, b;
   signal output c;
   c <== a*b;
}

template B(n){
   signal input in[n];
   signal out <== A(n)( a <== in[0], b <-- in[1]);
}

component main = B(2);