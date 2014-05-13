class ReportesController < ApplicationController
  def index
  	response = HTTParty.get('http://0.0.0.0:3000/thermostats.json')
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
end
