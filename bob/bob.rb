class Bob
  MESSAGE_DESCRIPTION = {
    'Question' => 'Sure.',
    'Yelled' => 'Whoa, chill out!',
    'Addressed' => 'Fine. Be that way!',
    'Anything_Else' => 'Whatever.'
  }

  def hey(remark)
    if remark.strip.empty?
      remark = MESSAGE_DESCRIPTION['Addressed']
    elsif /\p{Lower}/.match(remark).nil? && /\d$/.match(remark).nil?
      remark = MESSAGE_DESCRIPTION['Yelled']
    elsif remark.end_with?('?')
      remark = MESSAGE_DESCRIPTION['Question']
    else
      remark = MESSAGE_DESCRIPTION['Anything_Else']      
    end
    remark
  end
  
end