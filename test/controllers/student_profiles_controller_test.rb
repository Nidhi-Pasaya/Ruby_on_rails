require 'test_helper'

class StudentProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_profile = student_profiles(:one)
  end

  test "should get index" do
    get student_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_student_profile_url
    assert_response :success
  end

  test "should create student_profile" do
    assert_difference('StudentProfile.count') do
      post student_profiles_url, params: { student_profile: { Student_id: @student_profile.Student_id, address: @student_profile.address, age: @student_profile.age, email: @student_profile.email, mobile: @student_profile.mobile, name: @student_profile.name } }
    end

    assert_redirected_to student_profile_url(StudentProfile.last)
  end

  test "should show student_profile" do
    get student_profile_url(@student_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_profile_url(@student_profile)
    assert_response :success
  end

  test "should update student_profile" do
    patch student_profile_url(@student_profile), params: { student_profile: { Student_id: @student_profile.Student_id, address: @student_profile.address, age: @student_profile.age, email: @student_profile.email, mobile: @student_profile.mobile, name: @student_profile.name } }
    assert_redirected_to student_profile_url(@student_profile)
  end

  test "should destroy student_profile" do
    assert_difference('StudentProfile.count', -1) do
      delete student_profile_url(@student_profile)
    end

    assert_redirected_to student_profiles_url
  end
end
