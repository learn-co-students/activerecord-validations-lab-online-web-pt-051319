class TitleValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title && (record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess"))
            record.errors[:title] << (options[:message] || 'Title needs to be clickbait-y')
        end 
    end 
  end 