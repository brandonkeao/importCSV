class Result < ApplicationRecord
	require 'csv'
	
	def self.load_csv(file)
		#binding.pry
		results = []
		CSV.foreach(file.path, headers:true) do |row|
			results << Result.new(row.to_h)
			#Result.create! row.to_hash
		end
		Result.import(results)
	end

	def self.to_csv
		CSV.generate do |csv|
		  csv << column_names
		  all.each do |result|
		  	csv << result.attributes.values_at(*column_names)
		  end
		end
	end
end
