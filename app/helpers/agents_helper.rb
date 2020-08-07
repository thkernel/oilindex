module AgentsHelper
	def sale_point(id)
		SalePoint.find(id)
	end
end
