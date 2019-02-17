class OrganizationController < ApplicationController
	def show
		@organization = Organization.find_by!(id: params[:id])
		render json @organization
  end
  def index
  	@organization = Organization.all
  	render json: @organization
  end
end