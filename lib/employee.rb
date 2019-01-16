class Employee < ActiveRecord::Base
	belongs_to :store

	validates :first_name, :last_name, presence: true
	validates :hourly_rate, numericality: { greater_than_or_equal_to: 40}	
	validates :hourly_rate, numericality: { less_than_or_equal_to: 200}	
	# validates_associated :store
	
	before_save do 
		self.password = create_new_password
	end
	# dependant destroy
	private

	def create_new_password
		uuid = UUID.new
		uuid.generate.slice(0, 8)
	end


end
