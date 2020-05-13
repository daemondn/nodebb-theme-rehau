Persona theme for NodeBB
====================

Based on persona - is the new default theme for NodeBB as of v0.7.1

# Build 

separate build not required

build performed during installation to nodebb forum

# Install on nodebb forum

## Prerequisites
nodebb installed in '/home/portal/nodebb' from user portal

## Installation
`su - portal`
`git clone https://xxxx/nodebb-theme-rehau.git`
`cd nodebb-theme-rehau`
`sudo npm link`
`cd ~/nodebb`
`./nodebb stop`
`cd node_modules`
`npm link nodebb-theme-rehau`
`cd ~/nodebb`
`./nodebb build tpl`
`./nodebb start`
