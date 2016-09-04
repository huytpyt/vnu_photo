class Photo < ActiveRecord::Base
  belongs_to :author
  has_attached_file :image, styles: {xsmall: "140x2000>", small: "200x2000>", medium: "300x2000>", large: "700x2000>", xlarge: "1000x2000>", xxlarge: "1300x2500>"}
  validates_attachment :image, presence: true, content_type: {content_type: ["image/jpeg","image"]}
end
