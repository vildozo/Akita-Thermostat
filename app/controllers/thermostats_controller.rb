class ThermostatsController < ApplicationController
  before_action :set_thermostat, only: [:show, :edit, :update, :destroy]

  # GET /thermostats
  # GET /thermostats.json
  def index
    if (current_user!=nil)
      @thermostats = current_user.thermostats
    else
      redirect_to root_path
    end
  end
def devise
end
  # GET /thermostats/1
  # GET /thermostats/1.json
  def show
    ciudad = @thermostat.location.city
    ciudad = ciudad.gsub(" ","_") + ",Bolivia"
    responseClim = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=' + ciudad + '&lang=sp')
    @tempMax =  responseClim["main"]["temp_max"]
    @tempMin =  responseClim["main"]["temp_min"]
    @hum =  responseClim["main"]["humidity"]
    @description = responseClim["weather"][0]["description"]

    response = HTTParty.get('http://127.0.0.1:80/thermostats.json')

    @thermostats = Array.new


    response.each do |thermo|      
      if thermo["serial"] ==  @thermostat.serial
        @thermostats.push(thermo)
        thermo["thermostat_id"] = @thermostat.id
        thermo["ahorro"] = thermo['consumoN'].to_i - thermo['consumoA'].to_i
         thermo.delete("serial")
         thermo.delete("url")
        @history_thermostat = HistoryThermostat.new(thermo)
        @history_thermostat.save
      end 
    end
    @actualThermo = @thermostats.last


  end

  # GET /thermostats/new
  def new
    @thermostat = Thermostat.new
    @locations = current_user.locations
  end

  # GET /thermostats/1/edit
  def edit
    @locations = current_user.locations
  end

  # POST /thermostats
  # POST /thermostats.json
  def create
    @thermostat = Thermostat.new(thermostat_params)
    @locations = current_user.locations
    @thermostat.user = current_user
    @thermostat.energy = 0
    @thermostat.humidity = 0
    respond_to do |format|
      if @thermostat.save
        format.html { redirect_to location_thermostat_path(@thermostat.id), notice: 'El termostato fue creado satisfactoriamente.' }
        format.json { render action: 'show', status: :created, location: @thermostat }
      else
        format.html { render action: 'new' }
        format.json { render json: @thermostat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermostats/1
  # PATCH/PUT /thermostats/1.json
  def update
    @locations = current_user.locations
    respond_to do |format|
      if @thermostat.update(thermostat_params)
        format.html { redirect_to @thermostat, notice: 'El termostato fue actualizado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thermostat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermostats/1
  # DELETE /thermostats/1.json
  def destroy
    @thermostat.destroy
    respond_to do |format|
      format.html { redirect_to thermostats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermostat
      @thermostat = Thermostat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermostat_params

      params.require(:thermostat).permit(:serial, :temperature, :user_id, :current_temperature, :location_id, :humildity, :energy )

    end
end
