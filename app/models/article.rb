class Article < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  friendly_id :title, use: :scoped, scope: :user
  has_rich_text :body
  has_many_attached :attachments

  def self.ordered
    order(id: :desc)
  end

  def date
    created_at.to_date
  end

end
