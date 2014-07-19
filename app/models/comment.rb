class Comment < ActiveRecord::Base
  belongs_to :article

class CreateComments < ActiveRecord::Migration
    def change
        create_table :comments do |t|
            t.string :commenter
            t.text :body
              
            # this line adds an integer column called `article_id`.
            t.references :article, index: true
              
            t.timestamps
        end
    end
    
class Article < ActiveRecord::Base
    has_many :comments
    validates :title, presence: true,
    length: { minimum: 5 }
    end
    
end

end
