describe 'As a page, I display context menues', :the_internet => true do

  let(:the_internet_page) { "http://the-internet.herokuapp.com" }
  let(:option) { "Dropdown" }
  let(:item_one) { 'Option 1' }
  let(:item_one_value) { '1' }
  let(:item_two) { 'Option 2' }
  let(:item_two_value) { '2' }
  feature 'Browsers vist pages and display elements' do

    context 'user visits the-internet page' do

      scenario "check dropdown", :dropdown => true do
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
