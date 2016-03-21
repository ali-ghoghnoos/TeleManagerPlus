do
function run(msg, matches)
  if msg.to.id == our_id then
	 local data = load_data(_config.moderation.data)
    if matches[1] == 'join' and data[tostring(matches[2])] then
  		if is_banned(msg.from.id, matches[2]) then
	 		  return 'شما بن هستید'
	  	end
      if is_gbanned(msg.from.id) then
		    return 'شما از تمامی گروه ها بن هستید'
      end
      if data[tostring(matches[2])]['settings']['lock_member'] == 'yes' and not is_sudo(msg.from.id, matches[2]) then
        return 'گروه در حالت خصوصی میباشد'
      end
      local chat = "chat#id"..matches[2]
		  local user = "user#id"..msg.from.id
		  if is_sudo(msg) then
		  chat_add_user(chat, user, ok_cb, false)
end
end
  end
end
return {
    patterns = {
      "^[/!](join) (.*)$"
    },
    run = run,
}

end




--  -_-_-_-_-_-_-_-_-_-   ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||-_-_-_-_-_   ||-_-_-_-_-_
--
--
--                               /\                              /\             /-_-_-_-_-_    ||-_-_-_-_-_   ||-_-_-_-_-_
--  ||\\            //||        //\\        ||      //||        //\\           //              ||             ||         //
--  || \\          // ||       //  \\       ||     // ||       //  \\         //               ||             ||       //
--  ||  \\        //  ||      //    \\      ||    //  ||      //    \\       ||                ||             ||    //
--  ||   \\      //   ||     //______\\     ||   //   ||     //______\\      ||      -_-_-_-   ||-_-_-_-_-_   || //
--  ||    \\    //    ||    //        \\    ||  //    ||    //        \\     ||           ||   ||             ||  \\ 
--  ||     \\  //     ||   //          \\   || //     ||   //          \\     \\          ||   ||             ||     \\
--  ||      \\//      ||  //            \\  ||//      ||  //            \\     \\-_-_-_-_-||   ||-_-_-_-_-_   ||        \\
--
--
--  ||-_-_-_-    ||           ||           ||               //-_-_-_-_-_-
--  ||     ||    ||           ||           ||              //
--  ||_-_-_||    ||           ||           ||             //
--  ||           ||           ||           ||             \\
--  ||           ||           \\           //              \\
--  ||           ||            \\         //               //
--  ||           ||-_-_-_-_     \\-_-_-_-//    -_-_-_-_-_-//
--
--By @ali_ghoghnoos
--@telemanager_ch
