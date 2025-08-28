# macOS Terminal 101 for Data Engineers

## What is the Terminal?
The Terminal is a text-based interface to your computer. Instead of clicking icons, you type commands to:
- Navigate files and folders
- Run programs and scripts
- Install software
- Manage databases
- Execute data pipelines

## Why Data Engineers Need Terminal Skills
- **Server Management**: Most data servers run Linux (similar to macOS terminal)
- **Tool Installation**: Many data tools are installed via command line
- **Automation**: Scripts and pipelines are often run from terminal
- **Remote Work**: Access remote databases and servers
- **Version Control**: Git commands for code management
- **Container Management**: Docker commands for data environments

## Basic Concepts

### 1. Shell vs Terminal
- **Terminal**: The application window
- **Shell**: The program that interprets your commands (zsh is default on macOS)

### 2. File System Navigation
```bash
/                    # Root directory (top level)
/Users/yourusername  # Your home directory (~)
/Applications        # Where apps are stored
/usr/local/bin       # Where command-line tools live
```

### 3. Command Structure
```bash
command [options] [arguments]
ls -la /Users        # command=ls, option=-la, argument=/Users
```

## Essential Commands Every Data Engineer Should Know

### Navigation & File Operations
```bash
pwd                  # Print working directory (where am I?)
ls                   # List files and folders
ls -la               # List with details (permissions, size, date)
cd /path/to/folder   # Change directory
cd ~                 # Go to home directory
cd ..                # Go up one directory
mkdir foldername     # Create directory
touch filename.txt   # Create empty file
cp file1 file2       # Copy file
mv oldname newname   # Move/rename file
rm filename          # Delete file (careful!)
rm -rf foldername    # Delete folder and contents (very careful!)
```

### File Content & Text Processing
```bash
cat filename         # Display file contents
head filename        # Show first 10 lines
tail filename        # Show last 10 lines
tail -f logfile      # Follow log file (live updates)
grep "search" file   # Search for text in file
wc -l filename       # Count lines in file
```

### Process & System Management
```bash
ps aux               # Show running processes
top                  # Show system activity
kill processid       # Stop a process
which python         # Find where python is installed
whereis python       # Find python locations
```

### Package Management (Homebrew)
```bash
brew install tool    # Install software
brew list            # List installed packages
brew update          # Update Homebrew
brew upgrade         # Upgrade packages
```

## Data Engineering Specific Commands

### Python Environment Management
```bash
python --version     # Check Python version
pip install package  # Install Python package
pip list             # List installed packages
python -m venv env   # Create virtual environment
source env/bin/activate  # Activate virtual environment
```

### Database Connections
```bash
psql -h host -U user -d database  # Connect to PostgreSQL
mysql -h host -u user -p database # Connect to MySQL
```

### File Compression & Transfer
```bash
tar -czf archive.tar.gz folder/   # Create compressed archive
tar -xzf archive.tar.gz           # Extract archive
scp file user@server:/path/       # Copy file to remote server
rsync -av source/ destination/    # Sync directories
```

## Keyboard Shortcuts (Time Savers!)
```bash
Ctrl + C             # Cancel current command
Ctrl + D             # Exit terminal/logout
Ctrl + A             # Move to beginning of line
Ctrl + E             # Move to end of line
Ctrl + R             # Search command history
Tab                  # Auto-complete
↑/↓ arrows          # Navigate command history
```

## Understanding Paths
```bash
Absolute path: /Users/username/Documents/data.csv
Relative path: ./data.csv (current directory)
Relative path: ../data.csv (parent directory)
Home shortcut: ~/Documents/data.csv
```

## Environment Variables
```bash
echo $HOME           # Show home directory path
echo $PATH           # Show where system looks for commands
export VAR=value     # Set environment variable
env                  # Show all environment variables
```

## Pipes & Redirection (Powerful!)
```bash
command > file       # Save output to file
command >> file      # Append output to file
command1 | command2  # Pipe output of cmd1 to cmd2
ls | grep ".csv"     # List files, then filter for CSV files
```

## Common Data Engineering Workflows

### 1. Project Setup
```bash
mkdir my_data_project
cd my_data_project
python -m venv venv
source venv/bin/activate
pip install pandas numpy
```

### 2. File Processing
```bash
head -100 large_file.csv     # Preview large file
wc -l *.csv                  # Count lines in all CSV files
grep -c "error" logfile.txt  # Count errors in log
```

### 3. System Monitoring
```bash
df -h                        # Check disk space
free -h                      # Check memory usage (Linux)
ps aux | grep python         # Find Python processes
```

## Tips for New Data Engineers

1. **Start Small**: Practice basic navigation before complex commands
2. **Use Tab Completion**: It prevents typos and saves time
3. **Read Error Messages**: They usually tell you what's wrong
4. **Use `man command`**: Built-in help for any command
5. **Create Aliases**: Shortcuts for common commands
6. **Practice Daily**: Terminal skills improve with regular use

## Safety Tips
- Always double-check `rm` commands (deletion is permanent)
- Use `ls` to verify you're in the right directory
- Test commands on sample data first
- Keep backups of important files
- Use version control (Git) for code

This foundation will serve you well as you dive deeper into data engineering tools like dbt, Docker, Kubernetes, and cloud platforms!
