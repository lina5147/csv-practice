require 'csv'
require 'awesome_print'


def get_all_olympic_athletes(filename)
  required_olympian_fields = %w[ID Name Height Team Year City Sport Event Medal]
  # change to hash format
  olympic_althletes_array = CSV.read(filename, headers:true).map { |row| row.to_h}

  selected_fields_array = olympic_althletes_array.map do |athlete_hash|
    # select the required fields for each athlete and stores each athlete hash into the array
    athlete_hash.select { |field, data| required_olympian_fields.include? (field)}
  end

  return selected_fields_array
end

def total_medals_per_team(olympic_data)

  medals_only_array = olympic_data.filter { |athlete| athlete["Medal"] != "NA"}

  medal_count = Hash.new(0)

  medals_only_array.each do |athlete|
    medal_count[athlete["Team"]] += 1
  end

  return medal_count
end

def get_all_gold_medalists(olympic_data)

  gold_only = olympic_data.filter { |athlete| athlete["Medal"] == "Gold" }

  return gold_only
end
