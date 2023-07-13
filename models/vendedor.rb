class Vendedor < ApplicationRecord
 include PgSearch::Model
  pg_search_scope :search_full_text,
  against: {
  nombre: 'A',
  mail: 'B',
  numero_empleado: 'C'
  }
  end