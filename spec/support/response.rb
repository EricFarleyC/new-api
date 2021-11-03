module Response
  module JSONParser
    def response_body
      return if response.blank? || response.body.blank?

      ActiveSupport::JSON.decode(response.body)
    end
  end
end
