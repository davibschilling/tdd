require 'rails_helper'

RSpec.describe Customer, type: :model do
	# fixtures :customers
	# Utiliza-se o all para carregar todas as fixtures
	# fixtures :all
	# it 'Create a Customer with fixtures' do
	# 	davi = customers(:davi)
	# 	expect(davi.nome).to eq("davi batista")
	# end
	it 'Create a Customer with factorybot' do
		customer = create(:customer)
		expect(customer.nome).to eq("davi batista")
	end
end
