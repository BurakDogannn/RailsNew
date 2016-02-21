class AuthorProfile < ActiveRecord::Base
  belongs_to :author

  has_attached_file :avatar, styles: { avatar:"50x50>",large: "350x350>", medium: "200x200>", thumb: "150x150>" ,slider: "950x350#"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
