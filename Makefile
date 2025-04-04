#
# Copyright (c) 2020, 2023-2024 NVI, Inc.
#
# This file is part of FSL11 Linux distribution.
# (see http://github.com/nvi-inc/fsl11).
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
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#

all: installation.html cis-setup.html raid.html auid_customization.html

installation.html: installation.adoc
cis-setup.html: cis-setup.adoc
raid.html: raid.adoc
auid_customization.html: auid_customization.adoc


%.html: %.adoc
	asciidoctor -a toc $^

