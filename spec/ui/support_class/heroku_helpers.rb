module HerokuHelpers

  def click_menu_option(menu_option)
    find('div a', text: menu_option).click
  end

  def check_context_menu(context_text)
    prompt_text = page.driver.browser.switch_to.alert.text
    expect(prompt_text).to eq(context_text)
  end

  def right_click_box
    # binding.pry
    # find('div#hot-spot').right_click
    # assert_selector('right_menu')
  end

  def accept_context_menu
    page.driver.browser.switch_to.alert.accept
  end

  def assert_pressence
    assert_selector('div#menu li a', text: 'Home')
    assert_selector('div#menu li a', text: 'News')
    assert_selector('div#menu li a', text: 'Contact')
    assert_selector('div#menu li a', text: 'About')
  end

  def scroll_to_activate_menu
    scroll_to(page.find("div#page-footer", visible: false))
  end

  def close_browser
    page.driver.browser.close
  end
end
