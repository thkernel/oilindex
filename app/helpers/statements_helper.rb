module StatementsHelper
	def agent(id)
		Agent.find(id)
	end

	def product(id)
		Product.find(id)
	end

	def sale_point(id)
		SalePoint.find(id)
	end

	def statement_type(id)
		StatementType.find(id)
	end
end
