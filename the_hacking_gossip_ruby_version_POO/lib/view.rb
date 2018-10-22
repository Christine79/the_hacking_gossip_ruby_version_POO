
  class View

      def create_gossip

        puts "Bonjour, quel est votre nom de gossipeur?"
        author = gets.chomp

        puts "Bonjour, quel est votre potin de gossip de gossipeyr?"
        content = gets.chomp
        params =[]
        return params = [author, content]

      end

end
