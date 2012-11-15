yank-line
=========

Emacs extension that allows a user to yank a specific line

# Installation

To install simply add to your load path and include as below:

    (add-to-list 'load-path "/path/to/yank-line")
    (require 'yank-line)
    
# Usage

Provides two convenience methods _yl/copy-line_ and _yl/yank-line_ that take
a numeric argument which can be provided by C-u and copies the text from the
given line skipping any initial indentation. If no numeric argument is provided
then the current line is yanked or copied.

Example:

To copy and paste the contents from line 20 in the current buffer you would do:

    C-u 20 M-x yl/yank-line

To merely copy the contents from line 20 into the kill ring:

    C-u 20 M-x yl/copy-line

This is especially useful in a situation where you can see the line you would
like to duplicate but want something faster than navigating to the line and
copying.