# VIM Demo for the IDE Showdown

Instructions on how to use the example configuration shown on the IDE Talk for the only important text editor you need

Dont forget to check the related videos:
* [Mastering VIM](https://www.youtube.com/watch?v=wlR5gYd6um0)
* [VIM Without Plugins](https://www.youtube.com/watch?v=XA2WjJbmmoM)

Save the cheatsheet for quick references of the main commands:
* [VIM Cheatsheet](https://github.com/Praful/vim-cheatsheet/blob/master/vim-cheatsheet.pdf)

### Clone the Project
	git clone git@github.com:aebarreiro/VimDemo.git VimDemo
	cd VimDemo

### Load the local .vimrc configuration and start editing your files
Option 1:

	vim -u .vimrc <file>
	
Option 2:

	export VIMINIT="source .vimrc"
	vim <file>

Option 3:

	mv .vimrc ~/.vimrc

### Start ScreenKey
to start:

	screen -dmS screenkey bash -c 'bin/screenkey' 

to kill:

	screen -S screenkey -X quit

