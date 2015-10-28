require 'rails_helper'

RSpec.describe "manipuulyators/show", type: :view do
  before(:each) do
    @manipuulyator = assign(:manipuulyator, Manipuulyator.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
