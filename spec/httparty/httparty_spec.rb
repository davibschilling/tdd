describe 'HTTParty' do
  # it 'content-type' do
  #   response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
  #   content_type = response.headers['content-type']
  #   expect(content_type).to match(/application\/json/)
  # end

   # it 'content-type with Webmock' do

	# stub_request(:get, "https://jsonplaceholder.typicode.com/posts").
	#          to_return(status: 200, body: "", headers: { 'content-type': 'application/json; charset=utf-8' })

  #   response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
  #   content_type = response.headers['content-type']
  #   expect(content_type).to match(/application\/json/)
  # end

 #   it 'content-type with VCR' do
 #   	VCR.use_cassette("jsonplaceholder/posts") do
	#     response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
	#     content_type = response.headers['content-type']
	#     expect(content_type).to match(/application\/json/)
	# end
 #   end

   # it 'content-type with VCR and rspec', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body] } do
   it 'content-type with VCR and rspec', vcr: { cassette_name: 'jsonplaceholder/posts', :record => :new_episodes } do
	    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
	    content_type = response.headers['content-type']
	    expect(content_type).to match(/application\/json/)
   end
end