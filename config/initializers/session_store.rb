# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nycrb_session',
  :secret      => '44479981e4f9dadbff8381adde793af30f6e6c006823f9accde92b1eb612bd6245fba2ccf66fd88785c8eb0997b907c01c18b911fa771e208d1f89861250f002'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
