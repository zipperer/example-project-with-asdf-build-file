#!/bin/bash

sbcl --load cow.asd \
     --eval '(asdf:load-system :cow)' \
     --eval '(sb-ext:save-lisp-and-die #P"cow-executable" :executable t)'
				       
