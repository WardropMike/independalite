describe 'As a framework I run tests for APIs', :the_internet => true do
  let(:site_url) { "jsonplaceholder.typicode.com/users" }
  # Placeholder for JSON obj for resuest
  # Placeholder for JSON obj for assertion

  feature 'Call API to check', :feature => true do
    # setup(placeholder)
    context 'Verify Contract is returned as expected', :context => true do
      scenario 'Call API check response code', :response => true do
        response = call_api(site_url)
        check_response_code(response.code)
      end
      scenario 'Call API check response body', :response => true do
        response = call_api(site_url)
        check_body(response)
      end
      scenario 'Call API check response datatype', :url => true do
        response = call_api(site_url)
        check_datatype(response)
      end
    end
  end
end
