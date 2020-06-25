class Blog < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates_associated :comments
    validates :title, presence: true, length: {maximum: 60}
    validates :location, presence: true
    validates :content, presence: true, length: {minimum: 50}



  def country_name
    # country = ISO3166::Country[country]
    # country.translations[I18n.locale.to_s] || country.name
    country = self.country
    ISO3166::Country[country]
  end
end
