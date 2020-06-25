# Note

I'm done with this. If someone wants to maintain it send me a note and I'll transfer the repo. Or just fork it, or whatever.

Save the file in ~/.irssi/scripts/  
To load the script in irssi, do (in irssi): /script load char_count.pl  
To automatically run the script at startup, do (in the terminal): cd ~/.irssi/scripts/autorun/ ; ln -s ../char_count.pl

You will need to run the following command to add the char_count item to your statusbar:  
/statusbar window add char_count

For more information on the /statusbar command, run:  
/help statusbar

For example, I've inserted my char_count item with the following command:  
/statusbar window add -before more -alignment right char_count
