class Project < ApplicationRecord
	
	has_many :votes

	enum status: [ 'Private sale', 'Pre-sale', 'Crowdsale', 'Development', 'Production', 'Exchange']
	enum relation: [ 'Анализируем', 'Вошли', 'Отказали']



end
