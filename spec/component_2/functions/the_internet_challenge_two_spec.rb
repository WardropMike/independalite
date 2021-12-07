describe 'As a heroku app, I display an internet page', :the_internet => true do

  let(:the_internet_page) { "http://the-internet.herokuapp.com" }
  let(:context) { "Context Menu" }
  let(:context_text) { "You selected a context menu" }
  let(:floating_menu) { "Floating Menu" }
  feature "Browsers visit 'page(s)', page display elements and data" do

    # before(:all) do
    #   ofthetests
    # end
    context 'testing solutions', :the_solution do
      scenario 'modulo' do
        ofthetests
      end
    end
    context 'user visits the-internet page and clicks on:', :the_internet => true do
      scenario "context menu(s)", :context_menu => true do
        # odd_numbers(237, 999)
        # tests
        # binding.pry
        visit(the_internet_page)
        click_menu_option(context)
        trigger_context_menu
        check_context_menu(context_text)
        accept_context_menu
      end

      scenario "floating menu item(s)", :floating_menu => true do
        visit(the_internet_page)
        click_menu_option(floating_menu)
        assert_pressence
        scroll_to_activate_menu
        assert_pressence
      end

      after 'teardown' do
        # close_browser, tare down data...
      end
    end
  end
end
