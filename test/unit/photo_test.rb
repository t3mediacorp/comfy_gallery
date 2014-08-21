require File.expand_path('../test_helper', File.dirname(__FILE__))

class PhotoTest < ActiveSupport::TestCase
  
  def test_fixtures_validity
    Gallery::Photo.all.each do |photo|
      assert photo.valid?, photo.errors.full_messages.to_s
    end
  end
  
  def test_validations
    photo = Gallery::Photo.new
    assert photo.invalid?
    assert_has_errors_on photo, {
      :gallery_id       => ["can't be blank"],
      :image_file_name  => ["can't be blank"]
    }
  end
  
  def test_creation
    gallery = gallery_galleries(:default)
    assert_difference 'Gallery::Photo.count' do
      Gallery::Photo.create!(
        :gallery  => gallery,
        :title    => 'Test Photo',
        :image    => fixture_file_upload('/files/default.jpg', 'image/jpeg')
      )
    end
  end
  
end
