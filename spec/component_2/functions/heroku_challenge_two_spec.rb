describe 'As a heroku page, I display a menu', :the_internet => true do

  let(:the_internet_page) { "http://the-internet.herokuapp.com" }
  let(:context) { "Context Menu" }
  let(:context_text) { "You selected a context menu" }
  let(:floating_menu) { "Floating Menu" }
  feature 'Browsers vist pages and display elements' do

    context 'user visits the-internet page and clicks on', :the_internet => true do

      scenario "a context menu(s)", :context_menu => true do
        visit(the_internet_page)
        click_menu_option(context)
        trigger_context_menu
        check_context_menu(context_text)
        accept_context_menu
      end

      scenario "a floating menu item(s)", :floating_menu => true do
        visit(the_internet_page)
        click_menu_option(floating_menu)
        assert_pressence
        scroll_to_activate_menu
        assert_pressence
      end

      after 'tear down' do
        # close_browser, tare down data...
      end
    end
  end
end
