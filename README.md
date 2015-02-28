# transcode_scripts_mythTV
scripts used to automate process of transcoding default mpeg2 mythTV recordings into 1080p mpeg4/h264 files in mkv containers.

This group of scripts can be used to:


	create an "xbmc library aware" set of links to the mpeg2 mythTV recordings, by creating directory and filenames
	xmbc will recognize and add to its video library when part of a video library scan.  Optionally it can also
	request a video library scan on your xbmc cients using json calls to a remote xbmc client configured appropriately
	to allow remote xbmc control requests.

	
	transcode the default infefficent mythTV mpeg2 recordings into mpeg4/h264 video files in an mkv container.
	The transcode scripts have been tested to work on ubuntu-12.04 LTS, ubuntu-14.01 LTS, MacOsX 10.7x (lion), and MacOsX 10.8. (mountain lion).



Many thanks to the developer of these scripts Pedro Pena, all the hard work was done by him.  My contribution was slightly modify the code to work efficiently in my media server/client
environment.

				jmac

