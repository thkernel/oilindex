class Statement < ApplicationRecord
  belongs_to :statement_type
  belongs_to :product
  belongs_to :user
end
