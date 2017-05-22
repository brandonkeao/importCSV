class Result < ApplicationRecord
	require 'csv'

	def self.load_csv(file)
		CSV.foreach(file.path, headers:true) do |row|
			Result.create! row.to_hash
		end
	end
end
