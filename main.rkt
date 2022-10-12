#lang racket
(require "other.rkt")
(require "parser.rkt")
(require "runner.rkt")

(define sample-code '(call (function()(ask (bool > a b)(math - 1 2)(math - 1 2)))(a)))
(define parsed-neo-code (neo-parser sample-code))
(display parsed-neo-code)
(display "\n")
(run-neo-parsed-code parsed-neo-code env)
