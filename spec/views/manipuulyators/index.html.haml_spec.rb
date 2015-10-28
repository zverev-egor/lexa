require 'rails_helper'

RSpec.describe "manipuulyators/index", type: :view do
  before(:each) do
    assign(:manipuulyators, [
      Manipuulyator.create!(),
      Manipuulyator.create!()
    ])
  end

  it "renders a list of manipuulyators" do
    render
  end
end
