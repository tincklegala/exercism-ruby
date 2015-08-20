# Transformation Step of ETL
class ETL
  def self.transform(old_format)
    new_format = {}
    old_format.each_pair do |key, value|
      value.each { |e| new_format[e.downcase] = key }
    end
    new_format
  end
end
