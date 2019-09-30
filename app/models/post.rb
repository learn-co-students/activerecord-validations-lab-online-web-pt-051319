class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    validate :is_clickbait?
    
    def is_clickbait?
        unless title && ["Won't Believe", "Secret", "Top", "Guess"].any? { |phrase| title.include?(phrase) }
            errors[:title] << "Title is not sufficiently clickbait-y"
        end
    end
end
