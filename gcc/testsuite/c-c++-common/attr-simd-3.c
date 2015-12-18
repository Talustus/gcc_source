/* { dg-do compile } */
/* { dg-options "-fcilkplus" } */
/* { dg-prune-output "undeclared here \\(not in a function\\)|\[^\n\r\]* was not declared in this scope" } */
/* { dg-require-effective-target pthread } */

void f () __attribute__((__simd__, __vector__)); /* { dg-error "in the same function marked as a Cilk Plus" "PR68158" } */
