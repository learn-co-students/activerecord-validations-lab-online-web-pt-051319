class TitleValidator < ActiveModel::Validator 

    def validate(record)
        unless record.title && record.title.include?("Won't Believe")
            record.errors[:title] << (options[:message] || 'Must be clickbate')
        end 
    end 

end 