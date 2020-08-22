# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<% unless current_user %>
<%= link_to “Sign in with Facebook”, user_facebook_omniauth_authorize_path %>
<% else %>
<%= link_to “Logout”, destroy_user_session_path, method: :delete %>
<% end %>
