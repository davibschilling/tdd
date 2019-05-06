FactoryBot.define do
  factory :customer, class: 'Customer' do
    # nome 'davi batista'
    # email 'email@teste.com'
    nome { "davi batista" }
    email  { "email@teste.com" }
  end
end