# transcode_scripts_mythTV
scripts used to automate process of transcoding default mpeg2 mythTV recordings into 1080p mpeg4/h264 files in mkv containers.

This group of scripts can be used to:


	create an "xbmc library aware" set of links to the mpeg2 mythTV recordings, by creating directory and filenames
	xmbc will recognize and add to its video library when part of a video library scan.  Optionally it can also
	request a video library scan on your xbmc cients using json calls to a remote xbmc client configured appropriately
	to allow remote xbmc control requests.

	
	using the great GPL opensource app HandBrakeCLI, transcode the default infefficent mythTV mpeg2 recordings into mpeg4/h264 video files in an mkv container.
	The transcode scripts have been tested to work on ubuntu-12.04 LTS, ubuntu-14.01 LTS, MacOsX 10.7x (lion), and MacOsX 10.8. (mountain lion).


An example run of using scripts.   Rember to review scripts for variables that require modifications for your media environment:

run as mythtv userid on the system running primary mythTV backend with mythTV mysql database:

	cd /mythTV/recordings/links/test

	~/scripts/makeMythLinks

	ls -lat


run as user with sudo mount privs on any system you want to use to crunch the HandBrakeCLI transcoding numbers:

	cd ~/bin/scripts

	./transcode-any

			Note the above commands assume the HandBrakeCLI binary is either in the default path of the user running
			the script, or has been added to ~/bin/.  If you have HandBrakeCLI in a different area modify the scripts
			export PATH statement appropriately.



The script can be run concurrently using multiple systems to do the transcoding...its been tested succesfully with five, but should work with
as many as you need.	



Many thanks to the developer of these scripts Pedro Pena, all the hard work was done by him.  My contribution was to slightly modify the code to work efficiently in my media server/client
environment.

				jmac

