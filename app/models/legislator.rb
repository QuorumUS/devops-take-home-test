class Legislator < ApplicationRecord
  searchkick

  validates :name, :chamber, presence: true
end
