[Liquids]
=========

**A package of misc Liquid blocks, tags and filters for LocomotiveCMS [Wagon] and [Engine].**

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

This gem includes useful [Liquid] blocks, tags and filters which can be all embedded in both [Wagon] and the [Engine].
Behind the scene, it uses [Solid] to write reliable and consistent Liquid code.

For now, it only works best with the edge versions of Wagon and the Engine (master branch).

Credits
-------

The [team behind LocomotiveCMS] for creating [LocomotiveCMS::LiquidExtensions] which this gem is based on.

Filters
-------

### Collections

#### sample

```
{{<ARRAY> | sample}}

{{<ARRAY> | sample: <NUMBER>}}
```

### Math

#### mod

```
{{<INTEGER> | mod: <MODULUS>}}
```

### Text

#### handleize

```
{{<STRING> | handleize}}
```

Tags
----

#### title

```
{% title %}

{% title name: '<NAME>', title: '<TITLE>', separator: '<SEPARATOR>' %}
```

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
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

Liquids is released under the [MIT License (MIT)], see [LICENSE].

[Engine]: https://github.com/locomotivecms/engine "The engine of LocomotiveCMS."
[Gemnasium]: https://gemnasium.com/bitaculous/liquids "Liquids at Gemnasium"
[Gemnasium Status]: http://img.shields.io/gemnasium/bitaculous/liquids.svg?style=flat "Gemnasium Status"
[here]: https://github.com/bitaculous/liquids/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/liquids/master/LICENSE "License"
[Liquid]: http://liquidmarkup.org "Liquid Templating language"
[Liquids]: http://bitaculous.github.io/liquids "A package of misc liquid blocks, tags and filters for LocomotiveCMS Wagon and Engine."
[LocomotiveCMS::LiquidExtensions]: https://github.com/locomotivecms/liquid_extensions "A list of misc liquid tags and filters."
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Solid]: https://github.com/tigerlily/solid "Helpers for easily creating custom Liquid tags and block."
[team behind LocomotiveCMS]: http://locomotivecms.com/crew "The crew behind LocomotiveCMS"
[Travis CI]: https://travis-ci.org/bitaculous/liquids "Liquids at Travis CI"
[Travis CI Status]: http://img.shields.io/travis/bitaculous/liquids.svg?style=flat "Travis CI Status"
[Wagon]: https://github.com/locomotivecms/wagon "The right tool to create and modify a LocomotiveCMS website locally."