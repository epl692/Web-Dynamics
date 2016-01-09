(defun mkcode (item) (eval (read-from-string item)))

(defun makecode (item) (mkcode(format nil "~A" item)))

(defun mktag (name) (mkcode (format nil "(defun ~A (content) (format nil \"<~A>~A</~A>\" content))" name name "~A" name)))

(defun mklink (name link) (format nil "<a href=\"~A\">~A</a>" link name))

(defun url (protocol address) (format nil "~A\://~A" protocol address))

(defun http (uri) (url "http" uri))

(defun stich (first second) (format nil "~A~%~A" first second))

(dolist (tag '("html" "head" "title" "body" "p" "style")) (mktag tag))

(defun page (pagetitle content) (html (stich (head (title pagetitle)) (body content))))

(defun write-file (filename data) (with-open-file (stream filename :direction :output :if-exists :supersede) (format stream data)))

(defun mkpage (filename title content) (write-file filename (page title content)))
