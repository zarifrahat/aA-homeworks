class Person < ApplicationRecord
    validates :name, presence: true
    validates :houses_id, presence: true

    def house
        House.find(houses_id)

    end

    # belongs_to(:house, {
    #     primary_key: :id,
    #     foreign_key: :houses_id,
    #     class_name: :House
    # })
end