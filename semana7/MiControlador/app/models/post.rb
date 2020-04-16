class Post < ApplicationRecord
  validates :title, :presence => true

  # La instrucción "dependent: :destroy" sirve para la
  # eliminación en cascada
  has_many :comments, dependent: :destroy
end
