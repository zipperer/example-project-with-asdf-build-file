# example-project-with-asdf-build-file

I followed these: 
* https://common-lisp.net/~mmommer/asdf-howto.shtml
* https://lispcookbook.github.io/cl-cookbook/scripting.html
to create
* .lisp files
* a system definition file
* a script to build an executable from the .lisp files using the system definition file

Jenkins will
* checkout git repo
* ./asdf-build-system-cow-alternative.sh
to build an executable

TODO add test step e.g.:
* in build step, set latest link to most recently built executable
* in test step, get executable that latest link points to
* run tests with executable
