class Article < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  friendly_id :title, use: :scoped, scope: :user

  def self.ordered
    order(id: :desc)
  end

  def date
    created_at.to_date
  end

end
