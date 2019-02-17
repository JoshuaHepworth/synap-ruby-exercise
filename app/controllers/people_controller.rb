class PeopleController < ApplicationController
	def show
		  	render :people => 'people/index'

	# 	pp 'penis'
	# 	@people = People.find_by!(id: params[:id])
	# 	render json @people
  end
  def index
  end
end