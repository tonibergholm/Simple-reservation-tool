# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_varaus_session',
  :secret      => 'fb2ddcabb8b7ff0ef86195dc6f5c75d632b3d42bab2266c86881010396ac4412d2625e62d22375d9f44892f2c25404a13554f888802badeb794488eabd6be8f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
