let start = 
	(print_endline "OCaml Calculator:")
(*  
	compile:
	ocamlc -o calculator calculator.ml
	start intepreter:
	ocaml
	quit the interpreter: 
	exit 0;;	
*)

let a = 10.0;;
let b = 5.0;;

let add x y =
	(x +. y);;

let sub x y =
	(x -. y);;

let mul x y =
	(x *. y);;

let div x y =
	(x /. y);;

start;;
let r1  = (add a b);;
let r2  = (sub a b);;
let r3  = (mul a b);;
let r4  = (div a b);;
let () =  Printf.printf "A = %f B = %f \n" a b;;
let () =  Printf.printf "%f ADD %f = %f\n" a b r1;;
let () =  Printf.printf "%f SUB %f = %f\n" a b r2;;
let () =  Printf.printf "%f MUL %f = %f\n" a b r3;;
let () =  Printf.printf "%f DIV %f = %f\n" a b r4;;
