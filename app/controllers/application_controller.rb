class ApplicationController < ActionController::API
  # include TokenAuthenticatable
  # include AdminAuthorizable

  rescue_from ActiveRecord::RecordNotFound, with: -> { render json: { error: 'Sry Ed Sheeran fan, that record wasn\'t found' }, status: :not_found }
end
