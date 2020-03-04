class Question

  def initialize(name)
    @name = name
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
    @points = 0
  end

  def question_answer
    puts "#{@name}: What does #{@number1} + #{@number2} equal?"
    response = gets.chomp
    if response.to_i == (@answer)
      puts '------------------------------'
      puts "Correct"
      @points = 0
    else 
      puts '------------------------------'
      puts "No!"
      @points = -1
    end
    @points
  end

end

