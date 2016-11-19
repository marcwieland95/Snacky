class Snack < ApplicationRecord

  monetize :price_rappens, :numericality => {
      :greater_than_or_equal_to => 0.05
  }

  has_attached_file :image,
                    :styles => {
                        :thumb => "100x100#",
                        :small  => "150x150>",
                        :medium => "200x200" }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :name, presence: true
  validates :price, presence: true
  has_many :orders, inverse_of: :snack, dependent: :destroy

  def to_s
    self.name
  end

end
