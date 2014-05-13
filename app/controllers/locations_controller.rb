class LocationsController < ApplicationController
	def create
	@location = Location.new(location_params)
	if @location.save
		render 'home'

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
	    params.require(:location).permit(:name, :ubication, :city)
	  end


end
