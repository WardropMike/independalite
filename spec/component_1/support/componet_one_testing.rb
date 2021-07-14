module ApiTesting

  def call_api(site_url)
    url = ("https://#{site_url}")
    uri = URI(url)
    response = HTTParty.get(uri)
  end

  def check_response_code(code)
    expect(code).to eq(200)
  end

  def check_body(response)
      response.each do |id|
        expect(id.member?('username')).to eq(true)
      end
  end

  def check_datatype(response__body_data)
    response__body_data.each do |id|
      id.is_a?(Hash)
    end
  end
end
