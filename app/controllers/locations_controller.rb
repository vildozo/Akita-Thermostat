class LocationsController < ApplicationController
	
	def index
		flash[:notice] = " se pudo guardar la ubicacion"
	end
	def create
	@locations = Location.new(location_params)
	if @locations.save
		#redirect_to root_url
		 render 'register'

	else
		flash[:notice] = "No se pudo guardar la ubicacion"
		    render 'register'
	end
end
def register
	 render 'register'
	end

private
	  def location_params
	    params.require(:location).permit(:name, :city,:ubication)
	  end


end
