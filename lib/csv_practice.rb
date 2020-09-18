require 'csv'
require 'awesome_print'

REQUIRED_OLYMPIAN_FIELDS = ["ID", "Name", "Height", "Height", "Team", "Year", "City", "Sport", "Event", "Medal"]
def get_all_olympic_athletes(filename)

  # change to hash format
  olympic_althletes_array = CSV.read(filename, headers:true).map { |row| row.to_h}

  # select the required fields
  selected_fields_array = olympic_althletes_array.map do |athlete|
    athlete.select { |attribute, data| REQUIRED_OLYMPIAN_FIELDS.include? (attribute)}
  end

  return selected_fields_array
end

def total_medals_per_team(olympic_data)

end

def get_all_gold_medalists(olympic_data)
end
