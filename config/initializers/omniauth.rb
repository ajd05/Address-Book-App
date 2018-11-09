OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1076146960366-mgbelpqg36pd5h30gf8ltuguqlj3qs0f.apps.googleusercontent.com', 'zqw8WKqwXBOB7QeVtN92QfDM', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end