class Oenologist < ApplicationRecord
    has_many :magazine_oenologists
    has_many :wine_oenologists, dependent: :destroy
    has_many :wines, through: :wine_strains, dependent: :destroy

    has_many :magazines, through: :magazine_oenologists, dependent: :destroy
    has_many :jobtitles, through: :magazine_oenologists, dependent: :destroy

end
