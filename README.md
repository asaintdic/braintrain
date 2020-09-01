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


  <!-- static links-->
  <li><%= link_to "Home", root_path %></li> 
  <li><%=link_to "About", about_path%></li>
  <li><%=link_to "Activities", activities_path%></li>
          <!--logged in and logged out -->
  <% unless logged_in? %>
      <li><%=link_to "Login", login_path%></li>
      <li><%=link_to "Signup", signup_path%></li>
  <% else%>
      <li><%=link_to "Profile", user_profile_path(current_user)%></li>
      <li><%=link_to "My Blogs", user_blog_path %></li>
      <li><%=link_to "My Resources",user_resource_path%></li>
      <li><%=link_to "Blogs", activities_path %></li>
      <li><%=link_to "Logout", logout_path, method: "delete"%></li>
      <li><%=link_to "Create Blog", new_user_blog_path(current_user)%></li>
      <li><%=link_to "Add Resource", new_user_activity_path(current_user)%></li>
  <% end%>

<li><%=link_to "My Activities", user_activities_path %></li>
      <li><%=link_to "New Activity", new_user_activity_path %></li>
      <li><%=link_to "My Resources",user_resource_path%></li>
      <li><%=link_to "Blogs", activities_path %></li>
      <li><%=link_to "Logout", logout_path, method: "delete"%></li>
      <li><%=link_to "Create Blog", new_user_blog_path(current_user)%></li>
      <li><%=link_to "Add Resource", new_user_activity_path(current_user)%></li>


        <!-- static links-->
  <li><%= link_to "Home", root_path %></li> 
 
  
          <!--logged in and logged out -->
  
      <li><%=link_to "Login", login_path%></li>
      <li><%=link_to "Signup", signup_path%></li>
  
      
     
  
<li><%=link_to "My Activities", user_activities_path(current_user) %></li>
      <li><%=link_to "Logout", logout_path, method: "delete"%></li>
     
    
  
<%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>

<%= form_tag(user_activities_path(current_user), method: "get") do %>
    <%= text_field_tag :term, nil,  id: "Search", placeholder: "enter search term" %>
  
    <%= submit_tag "Search"%>
  <% end %>


  <%= form_tag activities_path, method: "get") do %>
    <%= text_field_tag :term, nil,  id: "Search", placeholder: "enter search term" %>
  
    <%= submit_tag "Search"%>
  <% end %>
