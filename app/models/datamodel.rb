class Datamodel < ApplicationRecord
    belongs_to :fileupload

    validates :firstname, presence:  true, length: {maximum: 60}
    validates :lastname, presence:  true, length: {maximum: 60}
    validates :age, presence:  true
    validates :gender, presence:  true, length: {maximum: 60}
    validates :address, presence:  true, length: {maximum: 60}



end
