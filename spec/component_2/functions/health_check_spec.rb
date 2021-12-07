describe 'As a framework I run tests on a browser and network servies', :descriptions do
  let(:expected_url) { "https://www.google.com/" }
  feature 'Browsers visit pages and display elements and data' do
    context 'browser launches and visits page' do
      scenario 'check url of page', :url => true do
        visit(expected_url)
        check_page_url(current_url, expected_url)
      end
      scenario 'check element on page' do
        visit(expected_url)
        check_element_on_page
      end
    end
  end
end
