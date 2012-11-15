yank-line
=========

Emacs extension that allows a user to yank a specific line

# Usage

Provides a convenience method _yl/yank-line_ that takes a numeric argument
which can be provided by C-u and copies the text from the given line skipping
any initial indentation.

Example:

Kill text at line 20 (without deleting it) and place it on the kill ring so it
can be pasted:

    C-u 20 M-x yl/yank-line