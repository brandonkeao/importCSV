class ResultsController < ApplicationController

  def index
  	@results = Result.all
  end

  def csv_export
  	@results = Result.all
  	
  	File.open('results.csv', 'w+b') do |f|
    	f.write( @results.to_csv )
	end

	send_data CSV,
    	:filename => "results.csv",
    	:type => "application/csv"

    return

  end

  def accept_csv
  	Result.load_csv(params[:file])
  	redirect_to root_url, notice: "Results Data Imported!"
  end
end
