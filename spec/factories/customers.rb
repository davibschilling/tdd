require 'faker'

FactoryBot.define do
  factory :customer, aliases: [:user] do

  	transient do
  		upcased {false}
  	end

    # nome {"davi batista"}
    # email {"email@teste.com"}
    nome { Faker::Name.name }
    email { Faker::Internet.email }

	trait :nome_customer do
	    nome { Faker::Name.name }
	end

	trait :email_customer do
	    nome { Faker::Name.name }
	end

	factory :customer_nome_email, traits: [:nome_customer, :email_customer]


    after(:create) do |customer, evaluator|
    	customer.nome.upcase! if evaluator.upcased
    end

  end
end