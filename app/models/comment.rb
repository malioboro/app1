class Comment < ActiveRecord::Base
  attr_accessible :article_id, :content, :status, :user_is
  before_create :default_status
  belongs_to :article
  belongs_to :user
  validates :content, presence: true, length: { minimum: 10 }
  def default_status
    self.status = "not active"
  end
end
