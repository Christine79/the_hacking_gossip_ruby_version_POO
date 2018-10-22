require 'gossip'
require 'view'

class Controller

  def create_gossip
    gossip = Gossip.new("Valère Commère", "Poto est de Bordeaux")
    puts "Gossip   #{gossip.author} #{gossip.content}"
    gossip.save
  end
end
