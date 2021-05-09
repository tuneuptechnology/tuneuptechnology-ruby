# CHANGELOG

## v2.0.0 (2021-05-09)

* Updates entire library to be compliant with the new `v2` API (endpoints, HTTP methods, etc)
* Proper error handling by wrapping the RestClient request in begin/rescue
* The return value of any method is now the `Response` object instead of `json`, now you can retrieve the `status_code` or other details of the response
* Build requests via a `Client` now providing your email and api_key
* Added optional `base_url` and `timeout` options to client
* Module names are now plural
* The Client now checks if an email and api_key is provided and raises an error if not
* Adds automated releasing to RubyGems
* Added unit tests (closes #1)

## v1.2.0 (2021-02-20)

* Adds a timeout for HTTP requests
* Changes `Client.post` to `Client.make_http_request`

## v1.1.0 (2021-02-06)

* Added a Gemfile that points to the Gemspec (closes #2)
* Linted entire project with Rubocop
* Switched from Travis CI to GitHub Actions

## v1.0.0 (2020-05-11)

* Initial release
