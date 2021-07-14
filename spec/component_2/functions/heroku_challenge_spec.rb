describe 'As a page, I display context menues', :heroku => true do

  let(:the_internet_page) { "http://the-internet.herokuapp.com" }
  let(:context_menu) { "Context-Menu" }
  let(:floating_menu) { "Floating Menu" }
  feature 'Browsers vist pages and display elements' do

    context 'user visits the-internet page' do

      scenario "check other menu(s)", :context_menu => true do
        # visit(the_internet_page)
        # click_menu_option(context_menu)
        # right_click_box
        # check_context_menu(text)
        # close_context_menu
      end
    end
  end
end
