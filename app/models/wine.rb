class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains, dependent: :destroy
    has_many :wine_oenologists, dependent: :destroy
    has_many :oenologists, through: :wine_oenologists, dependent: :destroy



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
        oenologists.map do |oenologist_wines|
            oenologist_wines.name
        end.join(', ')  
    end





end
