yank-line
=========

Emacs extension that allows a user to yank a specific line

# Installation

To install simply add to your load path and include as below:

    (add-to-list 'load-path "/path/to/yank-line")
    (require 'yank-line)
    
# Usage

Provides a convenience method _yl/yank-line_ that takes a numeric argument
which can be provided by C-u and copies the text from the given line skipping
any initial indentation.

Example:

Kill text at line 20 (without deleting it) and place it on the kill ring so it
can be pasted:

    C-u 20 M-x yl/yank-line

This is especially useful in a situation where you can see the line you would
like to duplicate but want something faster than navigating to the line.