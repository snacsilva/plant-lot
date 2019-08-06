require 'rails_helper'

RSpec.describe "lotes/new", type: :view do
  before(:each) do
    assign(:lote, Lote.new(
      :name => "MyString",
      :latitude_1 => "MyString",
      :latitude_2 => "MyString",
      :longitude_1 => "MyString",
      :longitude_2 => "MyString",
      :image_name => "MyString",
      :image_type => "MyString",
      :tile_url_x => "MyString",
      :tile_url_y => "MyString",
      :tile_url_z => "MyString"
    ))
  end

  it "renders new lote form" do
    render

    assert_select "form[action=?][method=?]", lotes_path, "post" do

      assert_select "input[name=?]", "lote[name]"

      assert_select "input[name=?]", "lote[latitude_1]"

      assert_select "input[name=?]", "lote[latitude_2]"

      assert_select "input[name=?]", "lote[longitude_1]"

      assert_select "input[name=?]", "lote[longitude_2]"

      assert_select "input[name=?]", "lote[image_name]"

      assert_select "input[name=?]", "lote[image_type]"

      assert_select "input[name=?]", "lote[tile_url_x]"

      assert_select "input[name=?]", "lote[tile_url_y]"

      assert_select "input[name=?]", "lote[tile_url_z]"
    end
  end
end
