class Unfreezer
  def initialize app
    @app = app
  end

  def call env
    raw_status, raw_headers, raw_body = @app.call(env)
    [raw_status.dup, raw_headers.dup, raw_body.dup]
  end
end
