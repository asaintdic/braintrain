# README

The BrainTrain Brainwave Training App.

Ruby '2.6.1'

@activity.id = acivity_id

 <!-- <li><%=link_to "My Activities", user_activity_logs_path(@user) %></li> -->
   <!-- <li><%=link_to "New Activity", new_user_activity_log_path(@user) %></li> -->

   <div class="row">
<div class="col s12 m6 offset-m3">
  <div class="card ">
    <div class="card-content ">
      <span class="card-title">Create Activity Log</span>
      <%= form_for @user.activity_log, url: new_user_activity_log_path do |f| %>
        <div>
            <%= f.label :name%>
            <%= f.text_field :name%>
        </div>
        <div>
            <%= f.label :email%>
            <%= f.text_field :email%>
        </div>
        <div>
            <%= f.label :password%>
            <%= f.password_field :password%>
        </div>
        <div>
            <%= f.label :password_confirmation%>
            <%= f.password_field :password_confirmation%>
        </div>
       
             <%=f.submit "Signup"%>
        <%end %>
    
      </div>
    <div class="card-action">
   
    </div>
  </div>
</div>
</div>