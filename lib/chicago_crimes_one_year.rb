require "chicago_crimes_one_year/version"
require "unirest"

module ChicagoCrimesOneYear

	class Crime
  
  	attr_reader :beat :_secondary_description :fbi_cd :x_coordinate :block :domestic :case_ :_iucr :arrest :ward :y_coordinate :date_of_occurence :_primary_description :_location_description

   def initialize(hash)
      @case = hash["case_"]
      @primary_description = hash["_primary_description"]      
      @secondary_description = hash["_secondary_description"]
      @date_of_occurence = hash["date_of_occurence"]
      @arrest = hash["arrest"]
      @location_description = hash["_location_description"]  
      @domestic = hash["domestic"]             
      @block = hash["block"]   
      @beat = hash["beat"]
      @x_coordinate = hash["x_coordinate"]
      @y_coordinate = hash["y_coordinate"]
      @fbi_cd = hash["fbi_cd"]
      @iucr = hash["_iucr"]
    end

    def self.all
      crime_array = Unirest.get("https://data.cityofchicago.org/resource/x2n5-8w5q.json").body
      generate_crimes(crime_array)      
    end

    def self.find(search_term)
      employee_array = Unirest.get("https://data.cityofchicago.org/resource/x2n5-8w5q.json?$q=#{search_term}").body
      generate_crimes(crime_array)  
    end


    private

    def self.generate_crimes(crime_array)
      crimes = []
      crime_array.each do |crime_hash|
        crimes << Crime.new(crime_hash)
      end
      return crimes
    end
  end
end