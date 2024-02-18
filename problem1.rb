require 'csv'

def parse_csv(file_path)
  csv_data = []

  CSV.foreach(file_path, headers: true) do |row|
    csv_data << row.to_h
  end

  csv_data
end

file_path = 'data.csv'
parsed_data = parse_csv(file_path)

puts parsed_data.inspect
