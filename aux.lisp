#+sbcl
(loop for i in (remove "sb-mpfr"
                       (loop with result
                          for i in (directory (format nil "~A/contrib/*.*" (sb-posix:getenv "SBCL_HOME")))
                          do (pushnew (pathname-name i) result :test 'equal)
                          finally (return (nreverse result))) :test 'string-equal)
   do (require i))
