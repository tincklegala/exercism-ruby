# Validating a phone number
class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    return '0000000000' unless /[a-zA-Z]/.match(@phone_number).nil?

    cleaned_number = @phone_number.gsub(/[^0-9]/, '')
    number_size = cleaned_number.size
    return '0000000000' if number_size < 10 || number_size > 11

    if number_size == 10
      cleaned_number
    elsif cleaned_number[0] == '1'
      cleaned_number[1..10]
    else
      '0000000000'
    end
  end

  def area_code
    @phone_number[0, 3]
  end

  def to_s
    @phone_number = @phone_number[1, 10] if @phone_number.size == 11
    "(#{@phone_number[0, 3]}) #{@phone_number[3, 3]}-#{@phone_number[6, 4]}"
  end
end
