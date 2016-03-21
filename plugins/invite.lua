do
local function invite_user(chat_id, user_id, type_id)
if is_banned(user_id, chat_id) then
return send_large_msg('chat#id'..chat_id, 'Invitation canceled.\n'
..'ID'..user_id..' is (super)banned.')
end
chat_add_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
end
local function resolve_username(extra, success, result)
if success == 1 then
invite_user('chat#id'..extra.msg.to.id, 'user#id'..result.id, ok_cb, false)
else
return send_large_msg('chat#id'..extra.msg.to.id, 'Failed to invite '
..string.gsub(extra.msg.text, '!invite ', '')
..' into this group.\nPlease check if username is correct.')
end
end
local function action_by_reply(extra, success, result)
invite_user(result.to.id, result.from.id, ok_cb, false)
end
local function run(msg, matches)
if is_chat_msg(msg) and is_sudo(msg) then
if msg.reply_id and msg.text == "!invite" then
msgr = get_message(msg.reply_id, action_by_reply, {msg=msg})
end
if string.match(matches[1], '^%d+$') then
invite_user(msg.to.id, matches[1], ok_cb, false)
elseif string.match(matches[1], '^@.+$') then
msgr = res_user(string.gsub(matches[1], '@', ''), resolve_username, {msg=msg})
elseif string.match(matches[1], '.*$') then
-- This one is tricky. Big chance are, you need an initial interaction with <print_name>.
chat_add_user('chat#id'..msg.to.id, string.gsub(matches[1], ' ', '_'), ok_cb, false)
end
else
return 'Sudo only =))'
end
end
return {
description = 'Invite other user to the chat group.',
usage = {
moderator = {
-- Need space in front of this, so bot won't consider it as a command
' !invite : If type by replying, bot will then inviting the replied user.',
' !invite <user_id> : Invite by their user_id.',
' !invite @<user_name> : Invite by their @<user_name>.',
' !invite <print_name> : Invite by their print_name.'
},
},
patterns = {
'^[!/]invite$',
'^[!/]invite (.*)$',
'^[!/]invite (%d+)$'
},
run = run,
moderated = true
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
