;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Bahçe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require "Teachpacks/bahce-teachpack.rkt")

; gerçekten yazdığın kodu test etmek istiyorsan - random-imajler? true yap....
(define random-imajler? false)



(define kelebek (kelebek-imajı-üret random-imajler?))
(define kuyu (kuyu-imajı-üret random-imajler?))
(define bahçe (bahçe-imajı-üret random-imajler?))


;;;; Tanımların burada..bahçe boyutları, marjları
(define bahçe-genişliği (image-width bahçe))
(define bahçe-yüksekliği (image-height bahçe))
(define kelebek-genişliği (image-width kelebek))
(define kelebek-yüksekliği (image-height kelebek))
(define kuyu-genişliği (image-width kuyu))
(define kuyu-yüksekliği (image-height kuyu))
(define kuyu-x (kuyu-x-üret bahçe kuyu random-imajler?))
(define kuyu-y (kuyu-y-üret bahçe kuyu random-imajler?))
(define kelebek-ilk-x 420)
(define kelebek-ilk-y 300)


;; sözleşme, amaç ve örneklerini unutmayınız


;; bahçe-içinde-sol? : Sayı -> Mantıksal
;; karakter bahçenin sol tarafından içinde mi?
;; Örnekler
(ÖRNEK (bahçe-içinde-sol? kelebek-genişliği) true)
(define (bahçe-içinde-sol? x)
  true)


;; bahçe-içinde-sağ? : Sayı -> Mantıksal
;; karakter bahçenin sağ tarafından içinde mi?
;; Örnekler
(define (bahçe-içinde-sağ? x)
  true)

;; bahçe-içinde-alt? : Sayı -> Mantıksal
;; karakter bahçenin alt tarafından içinde mi?
;; Örnekler
(define (bahçe-içinde-alt? y)
  true)

;; bahçe-içinde-üst? : Sayı -> Mantıksal
;; karakter bahçenin üst tarafından içinde mi?
;; Örnekler
(define (bahçe-içinde-üst? y)
  true)

;; bahçe-içinde-mi? : Sayı Sayı-> Mantıksal
;; Kelebeğin hepsi hala bahçe içinde mi?
;; Örnekler
(define (bahçe-içinde-mi? x y)
  (bahçe-içinde-sol? x))

;; kuyu-dışında-mı? : Sayı Sayı -> Mantıksal
;; Kelebeğin hepsi kuyu dışında mı?
;; Örnekler
(define (kuyu-dışında-mı? x y)
  true)

;; güvende-mi? : Sayı Sayı-> Mantıksal
;; Kelebek yanmadan hareket edebilir mi? ?
;; Örnekler
(define (güvende-mi? x y)
  (bahçe-içinde-mi? x y))


(check-expect false false)
(ÖRNEK true true)

;; Animasyon başlatmak için (go) alttaki pencereye yaz
;; Kelebeği hareket ettirmek için ok tuşlarını kullan!
(define (go) (yut (start güvende-mi? bahçe kuyu kelebek kuyu-x kuyu-y kelebek-ilk-x kelebek-ilk-y)))



