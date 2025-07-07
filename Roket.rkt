;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Roket) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require "Teachpacks/fonksiyon-teachpack.ss")

(define (roket-yüksekliği saniye) 0)



;;;; "Run" tıklanınca aşağıdan girilen bu satır roketin uçmasını sağlayacak
;;;; Saniyeleri ilerletmek için boşluk tuşuna basın
(define (go x) (yut (x roket-yüksekliği)))

;; Çalıştırmak için (go başlat) aşağıdaki pencereye yaz.
;; Bunu çalıştırdıktan sonra "başlat" yerine "uzay" "grafik" yada "hepsi" deneyebilirsin! 