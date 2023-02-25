class Apartment < ApplicationRecord
    has_many :leases 
    has_many :tenants, through: :leases

    validates :number, uniqueness: true
    validates :number, presence: true
end
