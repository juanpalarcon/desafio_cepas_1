class Oenologist < ApplicationRecord
    has_many :magazine_oenologists
    has_many :wine_oenologists, dependent: :destroy


    has_many :magazines, through: :magazine_oenologists, dependent: :destroy
    has_many :jobtitles, through: :magazine_oenologists, dependent: :destroy

    has_many :oenologist_wines, dependent: :destroy
    has_many :wines, through: :oenologist_wines, dependent: :destroy


    # def magazine_name
    #     magazines.map do |magazine_info|
    #     magazine_info.name
    #     end.join(', ')
    # end 
    # def to_s
    #     name
    # end


    def job_name
        jobtitles.map do |j|
        j.name
        end.join(', ')
    end 
    
    def magazine_name
        magazines.map do |magazine_info|
            magazine_info.name
        end.join(', ')
    end

end
