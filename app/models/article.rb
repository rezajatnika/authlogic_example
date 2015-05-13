class Article < ActiveRecord::Base
  # Validations
  validates :title,   presence: true
  validates :content, presence: true

  # Associations
  belongs_to :user
end
