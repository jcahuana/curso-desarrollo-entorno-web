class Alumno < ApplicationRecord

  validates :nombres, presence: {
    message: "es obligatorio."
  }

  validates :dni, length: {
    minimum: 8,
    too_short: "debe tener 8 dígitos."
  },
  uniqueness: {
    message: "ya está registrado."
  }

  validates :email, confirmation: {
    case_sensitive: false
  }
end
