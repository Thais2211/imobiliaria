class Property < ApplicationRecord    
    has_many :property_attachments
    accepts_nested_attributes_for :property_attachments

    validates :name, presence: true
end
