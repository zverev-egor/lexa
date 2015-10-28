require 'rails_helper'

RSpec.describe "Manipuulyators", type: :request do
  describe "GET /manipuulyators" do
    it "works! (now write some real specs)" do
      get manipuulyators_path
      expect(response).to have_http_status(200)
    end
  end
end
