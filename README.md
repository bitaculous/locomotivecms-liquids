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

Credits
-------

The [team behind LocomotiveCMS](http://locomotivecms.com/crew "The crew behind LocomotiveCMS") for creating
[LocomotiveCMS::LiquidExtensions](https://github.com/locomotivecms/liquid_extensions "A list of misc liquid tags and filters.")
which this gem is based on.

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

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here](https://github.com/bitaculous/liquids/issues "Github Issues").

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0][semver]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

[semver]: http://semver.org

License
-------

[Liquids](http://bitaculous.github.io/liquids "A package of misc liquid blocks, tags and filters.") is released under
the MIT License (MIT), see [LICENSE](https://raw.githubusercontent.com/bitaculous/liquids/master/LICENSE "License").