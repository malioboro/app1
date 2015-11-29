class Article < ActiveRecord::Base
  attr_accessible :content, :title, :status
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 10 }
  validates :status, presence: true
  scope :status_active, -> {where(status: 'active')}
  scope :status_off, -> {where(status: 'off')}
  default_scope status_active
end
