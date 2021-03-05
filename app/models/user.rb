class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :username, presence: true
  validates_uniqueness_of :username
  validates :email, presence: true
  validates_uniqueness_of :email
end
