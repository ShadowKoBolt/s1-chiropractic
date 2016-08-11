class Homepage < Page
  jsonb_accessor :content,
                 hero_title: :string,
                 hero_subtitle: :text

  validates :hero_title, presence: true
  validates :hero_subtitle, presence: true

  has_many :homepage_hero_images
  accepts_nested_attributes_for :homepage_hero_images, allow_destroy: true
end
