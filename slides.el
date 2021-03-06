;;; slides.el -- Slide definitions
;;
;; Presentation given using Emacs and bufshow.  For more info see:
;;
;;   http://github.com/pjones/bufshow
;;
(bufshow-start
 [("src/banners.txt" "intro")
  ("README.org"      "868720b6-d686-4eb8-b855-dccae37b1f4f")
  (bufshow-split-below "README.org" "README.org"
                       "f4b8e166-e1a1-406c-b0db-3f4a64b511d0"
                       "1d0968dd-4cbb-43a3-8fe4-3d82a092075e")
  ("src/banners.txt" "functions")
  ("src/funcs.hs"    "square")
  ("src/funcs.hs"    "square'")
  ("src/funcs.hs"    "square''")
  ("src/funcs.hs"    "add")
  ("src/sugar.c"     "func1")
  (bufshow-split-below "src/sugar.c" "src/sugar.c" "func1" "func2")
  ("src/sugar.c"     "func3")
  (bufshow-split-below "src/sugar.c" "src/sugar.c" "func3" "func4")
  ("src/funcs.hs"    "add")
  ("src/funcs.hs"    "add'")
  ("src/funcs.hs"    "sum")
  ("src/banners.txt" "types")
  ("src/types.hs"    "bool")
  ("src/types.hs"    "person")
  ("src/types.hs"    "maybe")
  ("src/funcs.hs"    "justSquare")
  ("src/funcs.hs"    "justSquare'")
  ("src/types.hs"    "tree")
  ("src/banners.txt" "examples")
  ("src/wc.hs")
  ("src/rps.rb")
  ("src/rps.hs")
  ("README.org"      "5c1d117f-28c3-4716-b4e9-bb2fb2dfad0d")
  ("README.org"      "bd40cdd6-c72f-4336-b7c5-6ffeb785a7b7")
  ("README.org"      "488e9b3e-ec72-4e9b-8973-97376004d885")])
