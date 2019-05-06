require 'rails_helper'

RSpec.describe Customer, type: :model do
	fixtures :customers
	# Utiliza-se o all para carregar todas as fixtures
	# fixtures :all
	it 'Create a Customer with fixtures' do
		davi = customers(:davi)
		expect(davi.nome).to eq("davi batista")
	end
	it 'Create a Customer with factorybot - overwriting attribute' do
		customer = create(:user, nome: "davi batista")
		expect(customer.nome).to eq("davi batista")
	end
	it { expect{ create(:user) }.to change{Customer.all.size}.by(1) }
	it 'Transient Attribute' do
		customer = create(:user, upcased: true)
		expect(customer.nome.upcase).to eq(customer.nome)
	end
	it 'travel_to' do
		travel_to Time.zone.local(2004, 11, 23, 01, 04, 44) do
		  @customer = create(:customer_nome_email)
		end

		expect(@customer.created_at).to be < Time.now
	end
end
