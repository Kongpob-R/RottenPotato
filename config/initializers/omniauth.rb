# Replace API_KEY and API_SECRET with the values you got from Twitter
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, "399688294387385", "3c83b4cdea24fa3a9dcbb9ae6e8cc0af"
  end