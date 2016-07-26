require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :code => "MyString",
      :on => false
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_code[name=?]", "room[code]"

      assert_select "input#room_on[name=?]", "room[on]"
    end
  end
end
