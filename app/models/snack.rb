class Snack < ApplicationRecord

  monetize :price_rappens
  has_attached_file :image,
                    :styles => {
                        :thumb => "100x100#",
                        :small  => "150x150>",
                        :medium => "200x200" }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many :orders, inverse_of: :snack

  def to_s
    self.name
  end

end
