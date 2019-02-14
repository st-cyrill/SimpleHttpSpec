require 'faraday'

RSpec.describe "Request Host:http://localhost:8080" do
  let(:target) { "http://localhost:8080/" }
  subject do
    Faraday.get "#{target}"
  end

  context 'path:/' do
    it 'returns status 404' do
      expect(subject.status).to eq(404)
    end
  end

  context 'path:/enka.json' do
    let(:target) { "http://localhost:8080/enka.json" }
    it 'returns status 200' do
      expect(subject.status).to eq(200)
    end
  end
end
