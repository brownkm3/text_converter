When "I go to the homepage" do
      visit '/'
end

Then "I should see the welcome page" do
      expect(page).to have_content("Hello Welcome to Text Converter")
end

When "I submit text via the text box" do
  fill_in('Text to convert', with: "twas brillig and the slivy toves")
  click_on('Convert text')
end

Then "I should see the converted text" do 
  expect(page).to have_content("twas toves")
end

When "I click clear text" do
  click_on('Clear')
end

Then "I should get a clear text box" do
  expect(page.body).to have_field('Text to convert', with: "")
end


When 'I upload a file to be converted' do
  attach_file("file", File.join(Sinatra::Application.root, 'features', 'support', 'test.txt'))
  click_button "Upload file"
end
