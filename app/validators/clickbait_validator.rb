class ClickbaitValidator < ActiveModel::Validator
	def validate(record)
		if !(["Won't Believe", "Secret", "Top", "Guess"].any? { |catchphrase| record.title && (record.title.include? catchphrase) })
			record.errors[:title] << "Not sufficiently clickbait-y"
		end
	end
end