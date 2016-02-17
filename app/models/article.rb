class Article < ActiveRecord::Base
  belongs_to :categories

has_attached_file :image, styles: { large: "350x350>", medium: "200x200>", thumb: "150x150#" }
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
