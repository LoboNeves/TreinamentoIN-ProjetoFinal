class Payment < ApplicationRecord
    validates :total_price, :address, :payment_information, :summary, :calculation, presence: true
end
