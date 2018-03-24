class Vote < ApplicationRecord
	belongs_to :user
	belongs_to :project
	enum status: [ 'За', 'Против']
end
