require 'jumpstart_auth'

class MicroBlogger
  attr_reader :client
  
  def initialize
    puts "Initializing MicroBlogger"
    @client = JumpstartAuth.twitter
  end
  
  def tweet(message)
    message.length <= 140 ? @client.update(message): tweet_error
  end
  
  def tweet_error
    puts "Message exceeds length. Please try again."
  end
  
  def run
    puts "Welcome to the JSL Twitter Client!"
    command = ""
    while command != "q"
      printf "enter command: "
      input = gets.chomp
      parts = input.split(" ")
      command = parts[0]
      case command
      when 'q' then puts "Goodbye!"
      when 't' then tweet(parts[1..-1].join(" "))
      when 'dm' then dm(parts[1], parts[2..-1].join(" "))
      when 'spam' then spam_my_followers(parts[1..-1].join(" "))
      when 'elt' then everyones_last_tweet
      else
        puts "Sorry, I don't know how to #{command}"
      end
    end
  end
  
  def dm(target, message)
    screen_names = @client.followers.collect { |follower| @client.user(follower).screen_name }
    puts "Trying to send #{target} this direct message:"
    puts message
    message = "d @#{target} #{message}"
    screen_names.include?(target) ? tweet(message) : dm_error
  end
  
  def dm_error
    puts "This person is not following you. Please try again!"
  end
  
  def followers_list
    screen_names = @client.followers.collect { |follower| @client.user(follower).screen_name }
    return screen_names
  end
  
  def spam_my_followers(message)
    names = followers_list
    names.each {|name| dm(name, message)}
  end
  
  def everyones_last_tweet
    friends = @client.friends
    friends.each do |friend|
      # find each friend's last message
      puts "#{@client.user(friend).name} said..."
      puts "#{@client.user(friend).status.text}"
      puts "" # Just print a blank line to separate people
    end
  end
end

blogger = MicroBlogger.new
blogger.run