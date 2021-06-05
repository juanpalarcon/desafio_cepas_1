class MagazineOenologist < ApplicationRecord
  belongs_to :magazine
  belongs_to :oenologist
  belongs_to :jobtitle
end
