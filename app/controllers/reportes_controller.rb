class ReportesController < ApplicationController
  def index
  	response = HTTParty.get('http://127.0.0.1:3000/thermostats.json')
  	urls = Array.new
  	response.each do |rep|
  		urls.push(rep["url"]) 
  	end
  	@finalReport = Array.new
  	urls.each do |url|
  		temp = HTTParty.get(url)
  		@finalReport.push([temp["id"],temp["temperature"],temp["created_at"],temp["updated_at"]])
  	end
  end

  def clima
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=Cochabamba,Bolivia&lang=sp')
    @tempMax =  response["main"]["temp_max"]
    @tempMin =  response["main"]["temp_min"]
    @hum =  response["main"]["humidity"]
    @description = response["weather"][0]["description"]
  end
end
