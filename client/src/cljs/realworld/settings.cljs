(ns realworld.settings)

(def debug? ^boolean goog.DEBUG)

(def api-endpoint (if debug?
                    "http://localhost:5000"
                    "http://apps.mmmanyfold.com:5000"))

(def articles-per-page 10)
(def jwt-local-storage-name "cfd-jwt-token")
