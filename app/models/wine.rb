class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains


    def addStrainPercent(percents)
        percents.each do |strain_id, percentage|
            if percentage != ''
                temp_strain = self.wine_strains.where(strain_id: strain_id).first
                temp_strain.percentage = percentage
                temp_strain.save
            end
 
        
        end 
    end


end
