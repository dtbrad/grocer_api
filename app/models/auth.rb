class Auth

  ALGORITHM = 'HS256'

  def self.encode(payload)
    expiration = 30.minutes.from_now.to_i
    JWT.encode(
      payload.merge(exp: expiration),
      auth_secret,
      ALGORITHM)
  end

  def self.decode(token)
    JWT.decode(token, auth_secret, true, { algorithm: ALGORITHM }).first
  end

  def self.auth_secret
    ENV["AUTH_SECRET"]
  end

end
