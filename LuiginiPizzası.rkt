#lang racket
(require "Teachpacks/fonksiyon-teachpack.rkt")
; maliyet : Metin-> Sayı
; bir Pizza malzemesi verildiğinde o malzemeyle yapılan pizzanın maliyetini hesaplar
(define (maliyet malzeme)
  (cond
    [(string=? malzeme "peynir")    0.00]
    [else "Mesaj"])) 

;; Çalıştır'a basın ve etkileşim penceresinde maliyet hesabı yapmayı deneyin
;; mesele (maliyet "peynir") ifadesi 9'a değerlenmelidir.

