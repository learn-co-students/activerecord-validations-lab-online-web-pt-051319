class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && ["Won't Believe", "Secret", "Top", "Guess"].any? { |phrase| record.title.include?(phrase) }
            record.errors[:title] << "Title is not sufficiently clickbait-y"
        end
    end
end