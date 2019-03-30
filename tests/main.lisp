(defpackage cl-learning/tests/main
  (:use :cl
        :cl-learning
        :rove))
(in-package :cl-learning/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-learning)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
