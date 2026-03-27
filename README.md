[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE.md) [![Haxelib Version](https://img.shields.io/github/tag/openfl/flight.svg?style=flat&label=haxelib)](http://lib.haxe.org/p/flight) [![Build Status](https://img.shields.io/github/actions/workflow/status/openfl/flight/main.yml?branch=master)](https://github.com/openfl/flight/actions) [![Discord Server](https://img.shields.io/discord/415681294446493696.svg?color=7289da)](https://discordapp.com/invite/tDgq8EE)

Flight (Haxelib)
====

Flight is under development.


License
=======

Flight is free, open-source software under the [MIT license](LICENSE.md).


Building from Source
====================

1. Clone the Flight repository, as well as the submodules:

        git clone https://github.com/openfl/flight
        cd flight
        git submodule init
        git submodule update
        haxelib dev flight .

2. Install required dependencies:

        haxelib install lime
        haxelib install hxp

3. Rebuild Flight's upstream sources and download assets for examples:

        hxp

4. After any changes to the [packages/upstream](packages/upstream) submodule, rebuild from source:

        hxp build upstream


Sample
======

You can build a sample Flight project with the following commands:

    hxp test displayingabitmap
    hxp test bunnymark

You can also use "build" to create a Vite production build.


Join the Community
==================

Have a question? Want a new place to hang out?

 * [Discord](https://discordapp.com/invite/tDgq8EE)
