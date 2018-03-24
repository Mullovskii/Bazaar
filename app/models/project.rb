class Project < ApplicationRecord
	
	has_many :votes

	enum status: [ 'Private sale', 'Pre-sale', 'Pre-sale завершен', 'Crowdsale', 'Development', 'Production', 'Exchange']
	enum relation: [ 'Анализируем', 'Голосуем', 'Ждем хайпа', 'Пробуем войти', 'Вошли', 'Отказали']



end
