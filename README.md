# ShowMessageDetour

Related G+ post:https://plus.google.com/114988765220297924939/posts/gp3hgaHecYo

This project is in response to the above, particularly in respect of the
question of how to shadow or alter the behaviour of an library procedure
like ShowMessage or MessageDlg without altering the code in question. Paul Toth
suggested adding a unit to shadow the calls with an $IFDEF which is one good
suggestion, this demonstrates an alternative way that avoids even that change.
