# Welcome

Hi. This is my Neovim config that I use. It's tailored for my needs,
but I hope you find some things in here of use.

Basically, I use Ansible to deploy my Neovim configuration to all of
my computers. Templating is used to include/exclude configuration
parts depending on which computer Ansible is deploying too.

The configuration is split into the following sections:

* `000`. These are global Neovim settings, such as `set`s
* `100`. Functions that I use.
* `200`. Configuration options for plugins
* `300`. Plugins to install (I use vimplug)
* `400`. More configuration options for plugins
* `500`. Filemappings (basically a set of autocommands)
* `600`. Mappings, such as leaders, keystrokes and so on...
* `700`. Colours

Feel free to choose what you like, reject what you don't like and I
hope you gain some benefit from this small repo.

-=david=-
