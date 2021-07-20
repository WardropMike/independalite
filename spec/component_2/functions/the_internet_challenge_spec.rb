describe 'As a heroku app, I display a menu page', :the_internet => true do

  let(:the_internet_page) { "http://the-internet.herokuapp.com" }
  let(:option) { "Dropdown" }
  let(:item_one) { 'Option 1' }
  let(:item_one_value) { '1' }
  let(:item_two) { 'Option 2' }
  let(:item_two_value) { '2' }
  feature 'Browsers visit page display elements and data' do

    context 'user visits the-internet page and clicks on:' do

      scenario "dropdown options", :dropdown => true do
        visit(the_internet_page)
        click_menu_option(option)
        click_dropdown
        select(item_one_value)
        check_displayed(item_one)
        select(item_two_value)
        check_displayed(item_two)
      end
    end
  end
end
