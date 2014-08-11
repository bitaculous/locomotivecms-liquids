[Liquids]
=========

**A package of misc liquid blocks, tags and filters for [Wagon] and [LocomotiveCMS engine].**

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

This gem includes useful [Liquid] blocks, tags and filters which can be all embedded in both [Wagon] and the
[LocomotiveCMS engine]. Behind the scene, it uses [Solid] to write reliable and consistant liquid code.

For now, it only works best with the edge versions of Wagon and the engine (master branch).

Credits
-------

The [team behind LocomotiveCMS] for creating [LocomotiveCMS::LiquidExtensions] which this gem is based on.

Filters
-------

* mod
* sample

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

Bug reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

Liquids is released under the [MIT License (MIT)], see [LICENSE].

[Gemnasium Status]: http://img.shields.io/gemnasium/bitaculous/liquids.svg?style=flat "Gemnasium Status"
[Gemnasium]: https://gemnasium.com/bitaculous/liquids "Liquids at Gemnasium"
[here]: https://github.com/bitaculous/liquids/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/liquids/master/LICENSE "License"
[Liquid]: http://liquidmarkup.org "Liquid Templating language"
[Liquids]: http://bitaculous.github.io/liquids "A package of misc liquid blocks, tags and filters for Wagon and LocomotiveCMS engine."
[LocomotiveCMS engine]: https://github.com/locomotivecms/engine "The engine of LocomotiveCMS."
[LocomotiveCMS::LiquidExtensions]: https://github.com/locomotivecms/liquid_extensions "A list of misc liquid tags and filters."
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Solid]: https://github.com/tigerlily/solid "Helpers for easily creating custom Liquid tags and block."
[team behind LocomotiveCMS]: http://locomotivecms.com/crew "The crew behind LocomotiveCMS"
[Travis CI Status]: http://img.shields.io/travis/bitaculous/liquids.svg?style=flat "Travis CI Status"
[Travis CI]: https://travis-ci.org/bitaculous/liquids "Liquids at Travis CI"
[Wagon]: https://github.com/locomotivecms/wagon "The right tool to create and modify a LocomotiveCMS website locally."