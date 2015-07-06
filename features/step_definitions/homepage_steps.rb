When "I go to the homepage" do
      visit '/'
end

Then "I should see the welcome page" do
      expect(page).to have_content("Hello Welcome to Text Converter")
end

Then "I submit text via the text box" do
  visit '/'
  fill_in('Text to convert', with: "twas brillig and the slivy toves")
  click_on('Convert text')
end

Then "I should see the converted text" do 
  expect(page.body).to have_field('Converted text', with: "twas toves")
end
