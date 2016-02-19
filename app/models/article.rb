class Article < ActiveRecord::Base
  belongs_to :categories
  has_many :comments , dependent: :destroy
  
  validates :title, presence: true
  validates :image, presence: true
  validates :text, presence: true

has_attached_file :image, styles: { large: "350x350>", medium: "200x200>", thumb: "150x150>" ,slider: "1100x400#"}
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
