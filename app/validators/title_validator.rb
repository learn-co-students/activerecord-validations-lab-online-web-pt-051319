class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
           unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top /\d+/") || record.title.include?("Guess")
            record.errors[:title] << (options[:message] || "is not a click bait" )
            end
        end
    end
end