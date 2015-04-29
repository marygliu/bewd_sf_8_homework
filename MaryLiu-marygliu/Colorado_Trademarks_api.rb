#Outputs:
# - Entity name
# - Description
# - Trademark Form: OTH, LLC, Organization TBD, Individual, Corp....
# - MasterTrademark ID

require 'json'
require 'rest-client'

json = RestClient.get('https://data.colorado.gov/api/views/d3m2-b6we/rows.json?accessType=DOWNLOAD')
result = JSON.load json

"Here're all the entities filed as 'Corporations' in Colorado: "

#Output: Pull all entity names with the 'Corporation' Trademark form

result['data'].each do |file|
	if file[-1].include?('Corporation')
		puts "Entity names: #{ file[-3] }"
	end
end
