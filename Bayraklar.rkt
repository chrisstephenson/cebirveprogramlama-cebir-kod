#lang racket
(require "Teachpacks/bootstrap-teachpack.rkt")

; 1) Kırmızı noktayla başlayalım,  radius 50
(define dot (circle 50 "solid" "red"))


; 2)  "blank" isimli bir değişken tanıtalım, 300x200, içi boş, siyah bir dikdörtgen 
(define blank (rectangle 300 200 "outline" "black"))


; 3) japonya bir japonya bayrağı olsun.  (Boş  dikdörtgen ortasında kırmızı bir noklta)
(define japonya (put-image dot
                         150 100
                         blank))

(ÖRNEK (kare 2) 4)
(ÖRNEK (kare -2) 4)
(define (kare x)
  (* x x))




; Şimdi sen neleri yapabilirsin?...?