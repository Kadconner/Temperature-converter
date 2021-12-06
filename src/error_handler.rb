class ErrorHanlder
  def check_value(value)
    !Float(value).nil?
  rescue StandardError
    puts 'Invalid value entered (integer or floating point)'
    false
  end

  def check_correct_scale(scale)
    if %w[K F C].include? scale
      true
    else
      puts 'Incorrect scale has been entered ("K", "F", "C")'
      false
    end
  end

  def check_repeating_scale(source_scale, target_scale)
    if source_scale == target_scale
      puts 'The entered scales are the same'
      false
    else
      true
    end
  end
end
