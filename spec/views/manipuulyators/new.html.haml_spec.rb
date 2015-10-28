require 'rails_helper'

RSpec.describe "manipuulyators/new", type: :view do
  before(:each) do
    assign(:manipuulyator, Manipuulyator.new())
  end

  it "renders new manipuulyator form" do
    render

    assert_select "form[action=?][method=?]", manipuulyators_path, "post" do
    end
  end
end
