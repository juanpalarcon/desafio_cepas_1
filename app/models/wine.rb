class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains, dependent: :destroy


    def addStrainPercent(percents)
        percents.each do |strain_id, percentage|
            if percentage != ''
                temp_strain = self.wine_strains.where(strain_id: strain_id).first
                temp_strain.percentage = percentage
                temp_strain.save
            end
        end 
    end
    def strainnames_and_percentages
        wine_strains.map do |ws|
            "#{ws.strain.name} (#{ws.percentage}%)"
        end.join (', ')
    end 

end
