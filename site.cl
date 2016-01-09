(load "web-dynamics.cl")
(mkpage "page1.html" "Welcome" (stich (stich "Welcome to the Web Dynamics's Homepage. Please, enjoy a free link to " (mklink "Page 2" (http "epl692.github.io/page2.html"))) "."))
(mkpage "page2.html" "Basic Site" (stich (stich "Check out this basic website, there is even a link to the " (mklink "Home Page" (http "epl692.github.io/page2.html"))) "."))
