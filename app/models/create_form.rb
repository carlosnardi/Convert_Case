class CreateForm < ApplicationRecord
    def self.create(title, title_text, radio1_label, radio2_label)
      form = """
      This is an example of creating a simple form with a title and two radio buttons for different options.
      In the view file: 
      
      <h1> #{title} </h1>
      
      <%= form_tag ROUTE_path, method: :get do %>
      <%= label_tag :text, '#{title_text}' %><br>
      <%= text_field_tag :text, params[:text] %><br>
      <%= radio_button_tag :option, 'option1' %>
      <%= label_tag :option_1, '#{radio1_label}' %><br>
      <%= radio_button_tag :option, 'option2' %>
      <%= label_tag :option_2, '#{radio2_label}' %><br>
      <br>
      <%= submit_tag 'Submit' %>
    <% end %>
    <% if params[:option] == 'option1' %>
      <% result = @variable1 %>
    <% elsif params[:option] == 'option2' %>
      <% result = @variable2 %>
    <% end %>
    <p> Result: <%= result %></p>
     
      
    Attention: 
      1. Remember to make a controller and a model file to complete the MVC pattern.
      2. Insert your ROUTE_path correctly
      3. Change the @variable1 and 2, according to controller file."""
     
      return form
    end
  end