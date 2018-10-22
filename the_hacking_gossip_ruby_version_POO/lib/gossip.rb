class Gossip
  attr_reader :author, :content

  def initialize 
    @author = author
    @content = content
  end


# Ecriture de l'entête, mettre ailleurs, aç ne marche pas!!!! :)
#  require 'csv'
#  CSV.open("./db/gossip.csv", "w") do |csv|
#    csv << ["author", "content"]
#  end



  def save(author, content)
#    $:.unshift File.expand_path("./../db", __FILE__)
    my_gossip = Gossip.new #=> Créé une instance de potin, sauvergardée juste dans cette variable
#    my_gossip.save #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV


   require 'json'
   tempHash = {
    "author" => "#{author}",
    "content" => "#{content}"
              }
    File.open("./db/gossip.json","w") do |f|
      f.write(tempHash.to_json)
#  ou bien pour un résultat plus joli:
# f.write(JSON.pretty_generate(tempHash))
    end

    require 'csv'
    CSV.open("./db/gossip.csv", "w") do |csv|
        csv << ["#{author}", "#{content}"]
    end


  end

end
