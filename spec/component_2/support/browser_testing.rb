module BrowserTesting

  def check_page_url(url_from_test, expected_url)
    expect(url_from_test).to eq(expected_url)
  end

  def check_element_on_page
    # placeholder - selector = find('div input', text: '')
    assert_selector('div input')
  end

  def parse_string
    numbers = input.split(",").map { |num| num.to_i }
    numbers.inject(0) { |sum, numbers| sum + numbers }
  end
end
