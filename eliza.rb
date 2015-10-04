require_relative 'eliza_questions'

puts "The psychiatrist is in. Type q to finish."

class Eliza
@@yelling = false

  def begin_session
    @answer_counter = 0
    @yell_counter = 0
    loop do
        @answer_counter += 1
        entered = gets.chomp
        exit if entered == 'q'
        entered = '^^' if entered == ''
        is_yelling? entered
        @yell_counter +=1 if @@yelling
        puts Response.get_answer entered, @@yelling, @yell_counter, @answer_counter
        break if @answer_counter == 10
    end
  end

  def is_yelling? entered
    @@yelling = !@@yelling if entered.index("!")
  end

end

my_eliza = Eliza.new

my_eliza.begin_session
