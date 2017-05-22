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
end
