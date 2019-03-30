(defsystem "cl-learning"
  :version "0.1.0"
  :author "t-cool"
  :license "GPLv3.0"
  :depends-on ("alexandria"
               "ningle")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Learn English grammar with REPL"
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "cl-learning/tests"))))

(defsystem "cl-learning/tests"
  :author ""
  :license ""
  :depends-on ("cl-learning"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-learning"

  :perform (test-op (op c) (symbol-call :rove :run c)))
