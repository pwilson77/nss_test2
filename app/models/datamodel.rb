class Datamodel < ApplicationRecord
    belongs_to :fileupload

    validates :firstname, presence:  true, length; {maximum: 10}
    validates :lastname, presence:  true, length; {maximum: 10}
    validates :age, presence:  true
    validates :gender, presence:  true, length; {maximum: 7}
    validates :address, presence:  true, length; {minimum: 7}



end
