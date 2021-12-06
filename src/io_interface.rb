require './src/error_handler'

class IOInterface
  def initialize
    @error_handler = ErrorHanlder.new
  end

  def input_source_scale
    puts 'Enter a temperature measuring system ("K", "F", "C")'
    source_scale = gets.chomp

    if @error_handler.check_correct_scale(source_scale)
      source_scale
    else
      input_source_scale
    end
  end

  def input_target_scale(source_scale)
    puts 'Enter the measuring system you want to convert '
    target_scale = gets.chomp

    if  @error_handler.check_correct_scale(target_scale) &&
        @error_handler.check_repeating_scale(source_scale, target_scale)
      target_scale
    else
      input_target_scale(source_scale)
    end
  end

  def input_value
    puts 'Enter value:'
    value = gets

    if @error_handler.check_value(value)
      value.to_f
    else
      input_value
    end
  end

  def output_result(result)
    puts "Result = #{result}"
  end

  def check_exit
    puts 'Continue calculations?  (Y/N)'
    state = gets.chomp

    case state
    when 'N'
      abort 'Goodbye!'
    when 'Y'
      true
    else
      check_exit
    end
  end
end
