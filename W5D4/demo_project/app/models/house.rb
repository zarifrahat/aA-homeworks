class House < ApplicationRecord
    validates :address, presence: true

    def residents
        Person.where({houses_id: self.id})
    end

    # has_many(:people,{
    #     primary_key: :id,
    #     foreign_key: :houses_id,
    #     class_name: :Person
    # })
end