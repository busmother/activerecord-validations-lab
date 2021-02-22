class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil && record.title != ""
            # binding.pry
            unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Top/) || record.title.match?(/Guess/)
                record.errors[:title] << "Needs to be clickbait"
            end
        else
            record.errors[:title] << "Post is invalid without a title"
        end
    end
end

# If the title does not contain 
# "Won't Believe", "Secret", "Top [number]", 
# or "Guess", the validator should add a validation.