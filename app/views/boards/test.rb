<h2> Expired posts </h2>
<table border="1">
  <tr>
    <th>Title</th>
    <th>Body</th>
    <th>Posted on</th>
    <th>Expired on</th>
  </tr>
    </table>


  <%= if @the_board.expired_posts.count > 0%>
  <%= @the_board.valid_posts%>
  <%end %>
