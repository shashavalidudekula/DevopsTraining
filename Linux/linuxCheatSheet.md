# Directory Navigation

`cd ..`	 To go up one level of the directory tree. (Change into the parent directory.)

`cd`	 Go to the $HOME directory

`cd ~` Go to users $HOME directory

`cd /etc`	 Change to the /etc directory

 sudo su - changes to the root user

## File and Directory Commands

`ls -al` List all files in a long listing (detailed) format

`ls -li`  list the files in a present working directlry (pwd) along with the inode information

'ls -ltr` list the files in a present working directlry (pwd) as per the access time in the reverse oder

'ls -lt | head -5` list the top 5 files as per the access time in a present working directlry (pwd)

`pwd`	Display the present working directory

`touch filename` Creates an empty file with given filename

`mkdir directory`	 Create a directory
'mkdir -p directory1/directory` - creates a parent directlry if doesn't exists already

`rmdir directory` Removes empty directories only

`rm file` Remove (delete) file

`rm -r directory`	Remove the directory and its contents recursively

`rm -f file` Force removal of file without prompting for confirmation and also without read permsission

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

## File Permissions

`chown`  change the owner of a file ex --> chown bob hello.txt

`chown user:bob report.txt`  changes the user owning report.txt to 'user' and the group owning it to 'bob' `-R` recursively affect all the sub folders ex --> `chown -R bob:bob /home/Daniel`

`chmod` modify user access/permission

`chmod u+w testfile.txt`  Gives **Write** permission to _user_ for testfile.txt

`chmod g+r testfile.txt` Gives **Read** permission to _group_ for testfile.txt

`chmod o+x testfile.txt` Gives **Execute** permission to _others_ for testfile.txt
 
 u = user       g = group      o = other

r = read (read permissions)          w = write (write permissions)    x = eXecute (only useful for scripts and programs)

'+' means add a right           '-' means delete a right         '=' means affect a right


d = directory (if element is a directory) 

l = link (if element is a file link)

## User Information and Management

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

## System Information Commands

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

## Hardware Information Commands

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

## Performance Monitoring and Statistics

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

## Process Management

`ps` Display your currently running processes

`ps -ef`	 Display all the currently running processes on the system.

`ps -ef | grep processname`	 Display process information for processname top	# Display and manage the top processes

`htop`	 Interactive process viewer (top alternative)

`kill pid`  Kill process with process ID of pid

`killall processname` Kill all processes named processname

`program &`	 Start program in the background

`bg`	 Display stopped or background jobs

`fg` Brings the most recent background job to foreground

`fg n` Brings job n to the foreground

## Networking

`ip a` Display all network interfaces and IP address

`ip addr show dev eth0`	 Display eth0 address and details

`ethtool eth0`	 Query or control network driver and hardware settings

`ping host`	 Send ICMP echo request to host

`whois domain`	Display whois information for domain

`dig domain`	 Display DNS information for domain

`dig -x IP_ADDRESS`	 Reverse lookup of IP_ADDRESS

`host domain`	 Display DNS IP address for domain

`hostname -i`	 Display the network address of the host name.

`hostname -I`	 Display all local IP addresses of the host.

`wget http://domain.com/file`	 Download http://domain.com/file

`netstat -nutlp`	 Display listening tcp and udp ports and corresponding programs

## Archives

`tar -cf archive.tar directory`	 Create tar named archive.tar containing directory.

`tar -xf archive.tar`	 Extract the contents from archive.tar. 

`tar czf archive.tar.gz directory`	 Create a gzip compressed tar file name archive.tar.gz.
 
`tar xzf archive.tar.gz`	 Extract a gzip compressed tar file.

`tar cjf archive.tar.bz2 directory`	 Create a tar file with bzip2 compression

`tar xjf archive.tar.bz2`	 Extract a bzip2 compressed tar file.

## Installing Packages

`yum search keyword`	Search for a package by keyword.

`yum install package`	 Install package.

`yum info package`	 Display description and summary information about package.

`rpm -i package.rpm`	 Install package from local file named package.rpm

 `yum remove package`	 Remove/uninstall package.

<pre>tar zxvf sourcecode.tar.gz
cd sourcecode
./configure make
make install </pre>    install software from sourcode.     

'use below commands for installing packages under ubuntu os
`apt-get install package` install package
`apt-get remove package` remo

## Search

`grep pattern file`	 Search for pattern in file

`grep -r pattern directory`	 Search recursively for pattern in directory locate name	# Find files and directories by name

`find /home/john -name 'prefix*' `  Find files in /home/john that start with "prefix".

`find /home -size +100M`	 Find files larger than 100MB in /home

## File Transfers

`scp file.txt server:/tmp`	 Secure copy file.txt to the /tmp folder on server

`scp server:/var/www/*.html /tmp` Copy *.html files from server to the local /tmp folder.

`scp -r server:/var/www /tmp`	Copy all files and directories recursively from server to the current system's /tmp folder.

`rsync -a /home /backups/`	 Synchronize /home to /backups/home 

`rsync -avz /home server:/backups/`  Synchronize files/directories between the local and remote system with compression enabled

## Disk Usage

`df -h`  Show free and used space on mounted filesystems

`df -i`	 Show free and used inodes on mounted filesystems

`fdisk -l`	 Display disks partitions sizes and types

`du -ah`	 Display disk usage for all files and directories in human readable format

`du -sh`	Display total disk usage off the current directory




