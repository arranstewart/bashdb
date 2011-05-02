# -*- shell-script -*-
# "set width" debugger command
#
#   Copyright (C) 2010, 2011 Rocky Bernstein <rocky@gnu.org>
#
#   This program is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License as
#   published by the Free Software Foundation; either version 2, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#   General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; see the file COPYING.  If not, write to
#   the Free Software Foundation, 59 Temple Place, Suite 330, Boston,
#   MA 02111 USA.

_Dbg_help_add_sub set width \
'Set maximum width of lines' 1

typeset -i _Dbg_set_linewidth; _Dbg_set_linewidth=${COLUMNS:-80} 

_Dbg_do_set_width() {
    if [[ $1 == $int_pat ]] ; then 
	_Dbg_write_journal_eval "_Dbg_set_linewidth=$1"
    else
	_Dbg_errmsg "Integer argument expected; got: $1"
	return 1
    fi
    return 0
}
