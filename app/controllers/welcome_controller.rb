class WelcomeController < ApplicationController
  def index
    @complaints = Complaint.all

    render json: @complaints
  end
end
