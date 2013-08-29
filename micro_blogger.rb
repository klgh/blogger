require 'jumpstart_auth'

class MicroBlogger 
  #code
  attr_reader :client
  
  def initialize
    puts "Initializing"
    #code
  end
  
  def initialize
    puts "Initializing..."
    @client = JumpstartAuth.twitter
  end
  
  def tweet(message)
    @client.update(message)
  end
end

blogger = MicroBlogger.new
blogger.tweet("Blogging with Ruby! ")
blogger.user_timeline("gem")