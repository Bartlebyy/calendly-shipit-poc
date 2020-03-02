module Shipit
  class GitHubApp
    def authentication_payload
      payload = {
        iat: Time.now.to_i,
        exp: 10.minutes.from_now.to_i,
        iss: app_id
      }
      Rails.logger.warn "GithubApp config: #{@config}"
      key = OpenSSL::PKey::RSA.new(private_key)
      JWT.encode(payload, key, 'RS256')
    end
  end
end
