class ColorScheme < ApplicationRecord
  belongs_to :user
  validates :color_scheme_name, presence: true
end
