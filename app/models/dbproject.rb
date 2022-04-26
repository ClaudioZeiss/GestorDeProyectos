class Dbproject < ApplicationRecord
    validates :name, presence: true
    validates :state, presence: true
    validates :description, presence: true
end
