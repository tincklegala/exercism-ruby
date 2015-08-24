# Transformation Step of ETL
class ETL
  def self.transform(old_format)
    old_format.each_with_object({}) do |(key, value), new_format|
      value.each { |e| new_format[e.downcase] = key }
    end
  end
end
