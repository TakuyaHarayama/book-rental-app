class User < ActiveRecord::Base
  has_many :books, dependent: :delete_all
  validates :name, presence: true, length: { maximum: 50 }
end
