[Liquids](http://bitaculous.github.io/liquids "A package of misc liquid blocks, tags and filters.")
===================================================================================================

**A package of misc liquid blocks, tags and filters.**

[![Travis CI Status](https://travis-ci.org/bitaculous/liquids.svg)](http://travis-ci.org/bitaculous/liquids)
[![Gemnasium Status](https://gemnasium.com/bitaculous/liquids.svg)](https://gemnasium.com/bitaculous/liquids)

This gem includes useful [Liquid](http://liquidmarkup.org "Liquid Templating language") blocks, tags and filters which
can be all embedded in both [Wagon](https://github.com/locomotivecms/wagon "The right tool to create and modify a LocomotiveCMS website locally.")
and the [LocomotiveCMS engine](https://github.com/locomotivecms/engine "The engine of LocomotiveCMS."). Behind the scene,
it uses [Solid](https://github.com/tigerlily/solid "Helpers for easily creating custom Liquid tags and block.") to write
reliable and consistant liquid code.

For now, it only works best with the edge versions of Wagon and the engine (master branch).

Installation
------------

### Wagon

In your Wagon site, add the following line to your Gemfile:

    group :misc do
      gem 'liquids', github: 'bitaculous/liquids'
    end

### Engine

In the Gemfile of your engine, add the following line:

    gem 'liquids', github: 'bitaculous/liquids'

License
-------

[Liquids](http://bitaculous.github.io/liquids "A package of misc liquid blocks, tags and filters.") is released under
the MIT License (MIT), see [LICENSE](https://raw.githubusercontent.com/bitaculous/liquids/master/LICENSE "License").