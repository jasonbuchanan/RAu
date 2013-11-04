class Pog < ActiveRecord::Base
  validates :serialcode, presence: true, uniqueness: true
  has_many :entries, dependent: :destroy
end
