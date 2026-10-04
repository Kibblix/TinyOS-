## TinyOS
**Description**

This is my project for shrink.
it is a 3kb "terminal emulator", it runs completely standalone with a uri and is usable (to some extent) and
It has a few commands and a cool fetch!

**How to use it?**
Just take your built url (see the guide below) or the one located in the repo and paste it in your browser, simple as that
the you can play around with all the commands and check out its functions
since i was limited to only 3KB it doesnt have many commands but here is a list and what they do:
- echo
as you might expect if you are a unix or linux user it echoes evrything after it
- help
displays all commands, except one secret command (read to the end to figure out what it is) :o
- id
It pastes the username and group of the currently logged in session (it is hardcoded due to limitations sadly)
- kfetch
a custom fetch screen similar to fastfetch
- ls
lists all directories and files
- lsblk
lists all "storage" volumes
- pwd
lists you current directory
- nmctl
networking tool that is "broken"
- tinypac
package manager! that depends on nmctl
- clear
clears the screen
- shutdown
"shuts down" the terminal
> i sadly found no way to create or modify files withing the restraints i had been given so everything is hard coded :(

**How do i build it?**
first clone the repo by running this command
- git clone https://github.com/kibblix/TinyOS-
then go into the cloned directory
- cd TinyOS-/
Then you can build the script with by running `node build.mjs` and the built uri should be located within the dist/ directory.
Then just paste the uri into your preffered web browser (real ones use firefox :>) and start fooling around with it

