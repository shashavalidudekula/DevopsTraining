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
