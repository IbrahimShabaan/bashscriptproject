# bashscriptproject

File Management and System Utility Tool
A command-line tool designed for efficient file management, system monitoring, and data backup. This utility provides various features for handling files, managing permissions, monitoring system metrics, and more, all through an interactive menu interface.

Features

1. File and Directory Operations
Create, Copy, Move, Rename, Delete: Perform essential file and directory management tasks with simple prompts for necessary inputs (e.g., file or directory names, target paths).
Confirmation Prompts: Critical operations (e.g., deletion, renaming) include confirmation prompts to avoid accidental data loss.
Error Handling: User-friendly error messages assist users when incorrect inputs or permission issues arise.


2. File Search Functionality
Search by Criteria: Search for files based on:
File Name
File Type
File Size
Modification Date
Enables users to locate specific files efficiently.


3. Interactive Menu
File Management Options: Select and execute file operations (create, copy, move) through an interactive menu.
System Monitoring Options: Check CPU, memory, and disk space usage directly from the menu.
User Input Handling: A select statement manages user input, directing users to the appropriate functionality.


4. Permissions Management
Change File Permissions (chmod): Adjust file and directory permissions as needed.
Change Ownership (chown): Update ownership and group settings for files, with options to specify permission modes, users, and groups.


5. Backup and Restore
Backup Files/Directories: Use tar to create backups of important files and directories.
Restore from Backup: Easily restore files from created backups to ensure data recoverability.


6. System Information Display
Operating System Info: Shows system details, including:
Operating System
Hostname
Uptime
Current Date/Time
CPU Usage: Displays current CPU usage.
Memory Usage: Shows total, used, and free memory.
Disk Space Usage: Provides details on disk space, including total, used, and available space for each mounted filesystem.


7. Logging and Reporting
System Metrics Report: Generates and saves a summary report of current system metrics (CPU, memory, disk space) to a specified location for future reference.
Error Handling and User Experience
User-Friendly Error Messages: Notifies users when operations fail due to incorrect inputs, permission issues, or other exceptions.
Graceful Exception Handling: Ensures that the program handles unexpected scenarios without crashing.




Getting Started
Prerequisites
This tool requires Python 3.x and relevant permissions to manage files, directories, and system metrics.
Installation
Clone the repository:
bash
Copy code
Navigate to the project directory:

Copy code
Usage
Run the fullproject script:



License
This project is licensed under the MIT License.

Contact
For issues or further inquiries, please contact ebrahim_shaban16@yahoo.com
