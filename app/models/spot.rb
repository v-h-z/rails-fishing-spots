class Spot < ApplicationRecord
  belongs_to :user
  # attr_reader :categories
  # categories = ["lake", "river cat 1", "river cat 2", "sea", "pond"]
  @@categories = ["lake", "river cat 1", "river cat 2", "sea", "pond"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :category, inclusion: { in: @@categories }
  validates :name, :category, :address, presence: true
  validate :address_must_geocode

  def self.categories
  #   ["lake", "river cat 1", "river cat 2", "sea", "pond"]
    @@categories
  end

  def coucou
    puts "coucou"
  end

  private

  def address_must_geocode
    if self.geocode.nil?
      errors.add(:address, "This one doesn't geocode")
    end
  end
end
