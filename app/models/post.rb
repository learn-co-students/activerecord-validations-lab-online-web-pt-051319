class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction NonFiction)}
    validate :clickbate

    def clickbate
        unless self.title&.include?("Won't Believe" || "Secret" || "Guess") || self.title&.match(/Top\s\d+/)
            errors.add(:post, "Your post is invalid.")
        end  
    end

end
