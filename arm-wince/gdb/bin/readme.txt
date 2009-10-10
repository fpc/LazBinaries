This GDB 6.4 can be used to debug your WinCE applications remotely via ActiveSync from Win32 host. 

Some hints: 
-----------

Pass --tui parameter to GDB to enable TUI interface which makes debugging more comfortable. 
Use unix line endings (LF only) in your pascal source files. Otherwise GDB will show sources incorrctly. 

How to use: 
-----------

First, make ActiveSync connection to your Pocket PC device. 
Then launch gdb: 
gdb --tui <your_executable_at_local_pc> 

On gdb prompt type: 
run or just r 

GDB will copy your executable to the device in \gdb folder and run it. 

Here is a short list of most needed GDB commands: 
s - step into. 
n - step over. 
c - continue execution. 
br <function_name> - set a breakpoint at function_name. Use PASCALMAIN to set a breakpoint at program start. 
br <source_file>:<line_number> - set a breakpoint at specified source line. 

To learn more how to use GDB read its documentation here: http://www.gnu.org/software/gdb/documentation 
Free Pascal WinCE port page: http://www.freepascal.org/wiki/index.php?title=WinCE_port
