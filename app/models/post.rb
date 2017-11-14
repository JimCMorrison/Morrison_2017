class Post < ApplicationRecord
  has_attached_file :title_image,
    styles: { medium: "300x300>", thumb: "100x100>" },
    :path => ":rails_root/public/system/:class/:attachment/:id_partition/:style/:filename", 
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :title_image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 15 }
end
