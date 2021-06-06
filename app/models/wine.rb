class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains, dependent: :destroy
    has_many :wine_oenologists, dependent: :destroy
    has_many :oenologists, through: :wine_oenologists, dependent: :destroy

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
        list = []
        newe = []
        wine_strains.map do |ws|
            list << [ws.strain.name, ws.percentage ]
            # "#{ws.strain.name} (#{ws.percentage}%)"
        end
        list.sort_by{ |strain| strain[0] }.each do |wso|
            newe << "#{wso[0]}  (#{wso[1]}%)"
        end
        newe.join(', ')
    end 


    def oenologist_name
        oenologists.map do |wine_oenologist|
            wine_oenologist.name
        end.join(', ')  
    end






end
