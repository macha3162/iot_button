require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :code => "Code",
        :on => false
      ),
      Room.create!(
        :code => "Code",
        :on => false
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
