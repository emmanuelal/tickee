class Ticket < ActiveRecord::Base
  belongs_to :projects
  validates :name, presence: true
  validates :description, presence: true  ,length: { minimum: 10 }
end
