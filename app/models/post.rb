class Post < ApplicationRecord
    belongs_to :author


    #class method that handles arr of posts
    def self.arr_to_json
        self.all.map do |p|
            p.instance_to_json
        end 
    end 

    # instance method that handles one specific post
    def instance_to_json
        { 
            id: self.id,
            title: self.title,
            content: self.content,
            likes: self.likes,
            author: {
                id: self.author.id,
                name: self.author.name
             }
         }
    end 
end
