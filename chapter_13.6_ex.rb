class OrangeTree
  def initialize
    @tree_height = 0
    @age = 0
    @oranges_count = 0
  end

  def one_year_passed
    @age += 1
    if @age < 15
      puts "One year passed. The tree is #{@age.to_i} year#{@age>1?'s':''} old."
      # the tree bears orange when it is older than 3 years old
      if @age > 3
        @oranges_count = 2 * @age
      end
    else # if > 15 years old, the tree dies.
      puts "The tree is too old. It died."
      exit
    end
    @tree_height += 0.5
    puts "The tree grows. Now it is %.1fm height." % @tree_height
  end

  def count_the_oranges
    puts "Now you have #{@oranges_count == 0?'no':@oranges_count} " + 
         "orange#{@oranges_count == 0?'':'s'} on the tree!"
  end

  def pick_an_orange

    if @oranges_count > 0
      puts "You have picked an orange from the tree."
      puts "You ate the orange. Yummy!"
      @oranges_count -= 1
    else
      puts "There is no orange on the tree!"
    end
  end


end

# Interacive baby dragon
class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born."

    dispatch
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end 

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def dispatch
    options = self.public_methods(false)
    puts "What do you want to do to #{@name}? " +
         "(#{options.to_s.scan(/\w+/).join('/')})"
    
    action = gets.chomp

    # if the input is not a method in the class
    if !options.include?(action.to_sym)
      puts 'Invalid input. Please enter again.'
      dispatch
    end

    eval(action)

    # continue looping
    dispatch
  end


  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else # starving
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} has an accident.."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dace..."
    end
  end


end   


pet = Dragon.new 'Orange'
# op = pet.public_methods(false).to_s.scan(/\w+/)
# puts op.include?('feed')