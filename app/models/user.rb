class User < ApplicationRecord
  has_many :websites
  has_many :targets, through: :website
end
