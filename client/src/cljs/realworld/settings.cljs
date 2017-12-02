(ns realworld.settings)

(def debug? ^boolean goog.DEBUG)

(def api-endpoint (if debug?
                    "http://localhost:4000"
                    "https://conduit.productionready.io/api"))

(def articles-per-page 10)
(def jwt-local-storage-name "conduit-jwt-token")
