class Property < ApplicationRecord
	has_many :images
	has_many :has_services
	has_many :services, through: :has_services

	after_create :set_services

	def services=value
		@services=value 
	end

	def set_services
		@services.each do |serv|
			HasService.create(property_id: self.id, service_id: serv)
		end
	end

	def self.search(search)
		if search
			where(["descripcion LIKE ?", "%#{search}%"])
		else
			all
		end
	end

end
