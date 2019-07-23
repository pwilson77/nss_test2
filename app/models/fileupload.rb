class Fileupload < ApplicationRecord
    has_many :datamodels

    validates :filename, presence:  true, length: {minimum: 10}
end
