require 'renderers/version'

module Renderers
  def self.to_s
    render_invokers = caller
    Template.result binding
  end

  Template = ERB.new <<-EOF
<style type="text/css">
  ul.renderers {
    text-align: left;
    background-color: white;
    color: black;
  }
</style>
<ul class='renderers'>
<% render_invokers.each do |c| %>
  <li><%= c %></li>
<% end %>
</ul>
EOF

end
