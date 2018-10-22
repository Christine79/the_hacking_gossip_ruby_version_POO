require 'gossip'
require 'view'

class Controller

    def initialize
      @view = View.new
    end

    def create_gossip
#      gossip = Gossip.new("Valère Commère", "Poto est de Bordeaux")
#      puts "Gossip   #{gossip.author} #{gossip.content}"

      params = @view.create_gossip

      gossip = Gossip.new
#     puts "Gossip   #{gossip.author} #{gossip.content}"

      gossip.save(params[0] , params[1])


    end
end
