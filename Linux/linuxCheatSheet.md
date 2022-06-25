System Information Commands
======================================
  `uname -a`  Display Linux system information

  `uname -r` 	Display kernel release information

  `cat /etc/redhat-release`  Show which version of Red Hat installed

  `uptime` Show how long the system has been running + load

  `hostname` 	 Show system host name

  `hostname -I`   Display all local IP addresses of the host

  `last reboot`   Show system reboot history

  `date`  Show the current date and time
  
  `cal`	  Show this month's calendar
  
  `w`	  Display who is online
  
  `whoami`	 Who you are logged in as

Hardware Information Commands
==================================

`dmesg`	Display messages in kernel ring buffer

`cat /proc/cpuinfo`	 Display CPU information

`cat /proc/meminfo`	 Display memory information

`free -h`	Display free and used memory ( `-h` for human readable,`-m` for MB, `-g` for GB )
      
`lspci -tv`	 Display PCI devices

`lsusb -tv`	 Display USB devices

`dmidecode`	Display DMI/SMBIOS (hardware info) from the BIOS

`hdparm -i /dev/sda`	Show info about disk sda

`hdparm -tT /dev/sda`	Perform a read speed test on disk sda

`badblocks -s /dev/sda`	 Test for unreadable blocks on disk sda

Performance Monitoring and Statistics
=======================================

`top`		 Display and manage the top processes

`htop`	 Interactive process viewer (top alternative)

`mpstat	1`	 Display processor related statistics

`vmstat	1`	 Display virtual memory statistics

`iostat	1`	 Display I/O statistics

`tail -100 /var/log/messages` Display the last 100 syslog messages (Use `/var/log/syslog` for Debian based systems.)

`tcpdump -i eth0` Capture and display all packets on interface eth0

`tcpdump -i eth0 'port 80'`	 Monitor all traffic on port 80 ( HTTP )

`lsof`	 List all open files on the system

`lsof -u user`	List files opened by user
 
`watch df -h`	 Execute "df -h", showing periodic updates

User Information and Management
========================================

`id` Display the user and group ids of your current user.

`last`	 Display the last users who have logged onto the system.

`who`	 Show who is logged into the system.

`w`	# Show who is logged in and what they are doing.

`groupadd test`	 Create a group named "test".

`useradd -c "John Smith" -m john`	 Create an account named john, with a comment of "John Smith" and create the user's home directory.

`userdel john` Delete the john account.

`lid username` Shows the names of the groups which are given user is a part of

`lid -g groupname` shows the members of the given group

`usermod -aG sales john`	 Add the john account to the sales group

`usermod -g newgroup username` changes the default group of the user to new group

File and Directory Commands
===============================

`ls -al` List all files in a long listing (detailed) format

`pwd`	Display the present working directory

`mkdir directory`	# Create a directory

`rm file` Remove (delete) file

`rm -r directory`	Remove the directory and its contents recursively

`rm -f file` Force removal of file without prompting for confirmation

`rm -rf directory` Forcefully remove directory recursively

`cp file1 file2`	 Copy file1 to file2

`cp -r source_directory destination` Copy source_directory recursively to destination. If destination exists, copy source_directory into destination, otherwise create destination with the contents of source_directory.

`mv file1 file2` Rename or move file1 to file2. If file2 is an existing directory, move file1 into directory file2

`ln -s /path/to/file linkname`	 Create symbolic link to linkname touch file	# Create an empty file or update the access and modification times of file.

`cat file`	 View the contents of file

`less file`	 Browse through a text file

`head file`	 Display the first 10 lines of file

`tail file`	 Display the last 10 lines of file

`tail -f file`	 Display the last 10 lines of file and "follow" the file as it grows.

