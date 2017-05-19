class Image < ApplicationRecord
  belongs_to :property

  has_attached_file :imagen, styles: {thumb:"320x300"}
end
