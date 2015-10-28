require 'rails_helper'

RSpec.describe "manipuulyators/edit", type: :view do
  before(:each) do
    @manipuulyator = assign(:manipuulyator, Manipuulyator.create!())
  end

  it "renders the edit manipuulyator form" do
    render

    assert_select "form[action=?][method=?]", manipuulyator_path(@manipuulyator), "post" do
    end
  end
end
