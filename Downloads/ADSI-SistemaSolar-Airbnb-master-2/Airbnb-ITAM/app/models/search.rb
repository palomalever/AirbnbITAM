class Search < ApplicationRecord

	def search_properties

		properties = Property.all

		properties = properties.where(["descripcion LIKE ?","%#{keywords}%"]) if keywords.present?
		properties = properties.where(["direccion LIKE ?",direccion]) if direccion.present?		
		properties = properties.where(["descripcion LIKE ?",descripcion]) if descripcion.present?
		properties = properties.where(["precio <= ?",maxPrice]) if maxPrice.present?
		properties = properties.where(["servicios LIKE ?",servicios]) if keywords.present?


	end

end
