```

 ______     __  __     ______     __         __            ______     ______     ______     __     ______   ______  
/\  ___\   /\ \_\ \   /\  ___\   /\ \       /\ \          /\  ___\   /\  ___\   /\  == \   /\ \   /\  == \ /\__  _\ 
\ \___  \  \ \  __ \  \ \  __\   \ \ \____  \ \ \____     \ \___  \  \ \ \____  \ \  __<   \ \ \  \ \  _-/ \/_/\ \/ 
 \/\_____\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\     \/\_____\  \ \_____\  \ \_\ \_\  \ \_\  \ \_\      \ \_\ 
  \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_____/      \/_____/   \/_____/   \/_/ /_/   \/_/   \/_/       \/_/ 
                                                                                                                    

```

Let us talk about permissions in linux file system:

r=read
w=write
x=execute
d=directory

u=user
g=group
o=others

the command chmod is used to change/set up the permissions.

r=4
w=2
x=1

e.g.: `- rwx rwx rwx`
  - [x] `-` means that is a file
  - [x] first sequence rwx means user owner may [r]read, [w]write and [x]execute that file
  - [x] second sequence means group of owner users may [r]read, [w]write and [x]execute that file
  - [x] third sequence means all others possible users may [r]read, [w]write and [x]execute that file

e.g.: `d rwx --x r--`
  - [x] `d` means that is a directory
  - [x] first sequence rwx means user owner may [r]read, [w]write and [x]execute that file
  - [x] second sequence means group of owner users may [x]execute that file, but may not read and write that file
  - [x] third sequence means all others possible users may [r]read that file, but may not write and execute that file
