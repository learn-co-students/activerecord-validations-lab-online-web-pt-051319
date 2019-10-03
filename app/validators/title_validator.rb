class TitleValidator < ActiveModel::Validator 

  def validate(record)
    unless record.title && ["Won't Believe", "Secret", "Top", "Guess"].any? { |phrase| title.include?(phrase) }
      record.errors[:title] << "Title is not sufficiently clickbait-y"
    end
  end 
end 