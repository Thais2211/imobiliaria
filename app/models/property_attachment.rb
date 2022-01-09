class PropertyAttachment < ApplicationRecord
    mount_uploader :photo, PhotoUploader

    belongs_to :property #, foreign_key: 'properties_id'
end
