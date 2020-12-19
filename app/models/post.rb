class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100  }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end


# Add validations to Post such that...
# title is not blank
# content is at least 100 characters long
# category is either "Fiction" or "Non-Fiction"
