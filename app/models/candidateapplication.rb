class Candidateapplication < ApplicationRecord
    belongs_to :jobdetail, optional: true
end
