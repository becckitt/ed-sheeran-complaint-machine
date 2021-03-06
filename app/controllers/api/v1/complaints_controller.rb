module Api
  module V1
    class ComplaintsController < ApplicationController
      before_action :set_complaint, only: [:show, :update, :destroy]

      # GET /complaints
      def index
        @complaints = Complaint.all

        render json: @complaints
      end

      def show
        render json: @complaint
      end

      # POST /complaints
      def create
        @complaint = Complaint.new(complaint_params)

        if @complaint.save
          render json: @complaint, status: :created, location: @complaint
        else
          render json: @complaint.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /complaints/1
      def update
        if @complaint.update(complaint_params)
          render json: @complaint
        else
          render json: @complaint.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @complaint.destroy
      end

      private
        def set_complaint
          @complaint = Complaint.find(params[:id])
        end

        def complaint_params
          params.require(:complaint).permit(:body, :song)
        end
    end
  end
end
