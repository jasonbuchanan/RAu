class Entry < ActiveRecord::Base
    belongs_to :user, :pog, :location
end
