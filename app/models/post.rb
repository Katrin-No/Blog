class Post < ApplicationRecord
    has_many :comments
    has_and_belongs_to_many :tags
    has_rich_text :body
    validates :title, presence: true, uniqueness: {case_sensitive: false}

    def add_tag(tag)
        if !self.tags.include?(tag)
            self.tags << tag
        end
    end
end
