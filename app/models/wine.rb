class Wine < ApplicationRecord
  has_many :assemblies
  has_many :strains, through: :assemblies, dependent: :destroy

  # def strains_details
    
  #   details = assemblies.map do |assembly|
  #     "#{assembly.strain_name}: #{assembly.percentage}%"
  #   end
  #   details.sort.join(", ")
  # end

end
