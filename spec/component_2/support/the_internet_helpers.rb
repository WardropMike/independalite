module HerokuHelpers

  def click_menu_option(menu_option)
    find('div a', text: menu_option).click
  end

  def check_context_menu(context_text)
    prompt_text = page.driver.browser.switch_to.alert.text
    expect(prompt_text).to eq(context_text)
  end

  def trigger_context_menu
    evaluate_script "alert('You selected a context menu');"
  end

  def check_context_menu(menu_text)
      prompted_text = page.driver.browser.switch_to.alert.text
      expect(prompted_text).to eq(menu_text)
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

  def click_dropdown
    find('select#dropdown').click
  end

  def select(item)
    find("option[value='#{item}']").click
  end

  def check_displayed(item)
    e = "'select#dropdown'"
    item_displayed = page.all('e, option[selected]').map(&:text)
    item_displayed.include? item
  end

  def close_browser
    page.driver.browser.close
  end
end
