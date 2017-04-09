;;; TOOL: run-interp
(module
  (import "spectest" "print" (func $print_i32 (param i32)))
  (import "spectest" "print" (func $print_i32_i32 (param i32 i32)))
  (func (export "test") (result i32)
    i32.const 100
    call $print_i32
    i32.const 200
    i32.const 300
    call $print_i32_i32
    i32.const 1
    return)
)
(;; STDOUT ;;;
called host spectest.print(i32:100) =>
called host spectest.print(i32:200, i32:300) =>
test() => i32:1
;;; STDOUT ;;)
