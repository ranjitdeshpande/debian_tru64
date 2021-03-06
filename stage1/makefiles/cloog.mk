# Copyright 2018 Ranjit Deshpande <ranjitdeshpande@hotmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

NAME		:= cloog
VERSION		:= 0.18.1
CONFIG_FLAGS	= --enable-shared --with-gmp=system \
		   --with-gmp-prefix=$(TARGET_DIR)/usr \
		   --with-isl=system --with-isl-prefix=$(TARGET_DIR)/usr \
		   --with-gcc-arch=ev56
OBJDIR		:= __obj

CPPFLAGS	= -I$(TARGET_DIR)/usr/include
LDFLAGS		= -L$(TARGET_DIR)/usr/lib
CFLAGS		= -O2
MAKEVARS	= CFLAGS_WARN=""

include makefiles/pkgbuild.mk

