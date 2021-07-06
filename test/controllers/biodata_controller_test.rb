require "test_helper"

class BiodataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biodatum = biodata(:one)
  end

  test "should get index" do
    get biodata_url
    assert_response :success
  end

  test "should get new" do
    get new_biodatum_url
    assert_response :success
  end

  test "should create biodatum" do
    assert_difference('Biodatum.count') do
      post biodata_url, params: { biodatum: { btech: @biodatum.btech, dateofbirth: @biodatum.dateofbirth, email: @biodatum.email, fathername: @biodatum.fathername, gender: @biodatum.gender, inter: @biodatum.inter, name: @biodatum.name, ssc: @biodatum.ssc } }
    end

    assert_redirected_to biodatum_url(Biodatum.last)
  end

  test "should show biodatum" do
    get biodatum_url(@biodatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_biodatum_url(@biodatum)
    assert_response :success
  end

  test "should update biodatum" do
    patch biodatum_url(@biodatum), params: { biodatum: { btech: @biodatum.btech, dateofbirth: @biodatum.dateofbirth, email: @biodatum.email, fathername: @biodatum.fathername, gender: @biodatum.gender, inter: @biodatum.inter, name: @biodatum.name, ssc: @biodatum.ssc } }
    assert_redirected_to biodatum_url(@biodatum)
  end

  test "should destroy biodatum" do
    assert_difference('Biodatum.count', -1) do
      delete biodatum_url(@biodatum)
    end

    assert_redirected_to biodata_url
  end
end
