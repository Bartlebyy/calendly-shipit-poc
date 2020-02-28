module Shipit
  def user_access_tokens_key
    ENV['SECRET_KEY_BASE'].byteslice(0, 32)
    # (secrets.user_access_tokens_key.presence || secrets.secret_key_base).byteslice(0, 32)
  end
end
