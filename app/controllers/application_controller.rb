class ApplicationController < ActionController::API
	include Response
	include ExceptionHandler
	include DeviseTokenAuth::Concerns::SetUserByToken
	# protect_from_forgery unless: -> { request.format.json? }
end
