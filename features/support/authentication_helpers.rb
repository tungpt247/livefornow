module AuthenticationHelpers
  def sigin_in_as!(user)
    visit "/users/sign_in"
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    click_on("Log in")
    expect(page).to have_content("Signed in successfully.")
  end
end

module AuthHelpers
  def sign_in user
    ssession[:user_id] = user.id
  end
end

World(AuthenticationHelpers)
World(AuthHelpers)
