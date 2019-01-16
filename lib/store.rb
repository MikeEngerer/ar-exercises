class Store < ActiveRecord::Base
	has_many :employees
	validates :name, length: { minimum: 3 }
	validates :annual_revenue, numericality: { greater_than: 0 }


	def destroy
		if employees?
			# raise "Cannot destroy store that has employees"
		else
			super
		end
	end
	
	private

	def employees?
		self.employees.count > 0
	end
end
