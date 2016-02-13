[LocomotiveCMS Liquids]
=======================

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Code Climate Status][Code Climate Status]][Code Climate]
[![Test Coverage Status][Test Coverage Status]][Test Coverage]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**A package of [Liquid] blocks, tags and filters for [LocomotiveCMS] [Wagon] and [Engine].**

This Gem includes useful Liquid blocks, tags and filters which can be all embedded in both Wagon and the Engine. Behind
the scene, it uses [Solid] to write reliable and consistent Liquid code.

Contents
--------

### Filters

#### Collections

##### sample

```
{{<ARRAY> | sample}}

{{<ARRAY> | sample: <NUMBER>}}
```

#### Helpers

##### url_for

```
{{<STRING> | url_for}}
```

#### Math

##### mod

```
{{<INTEGER> | mod: <MODULUS>}}
```

#### Text

##### handleize

```
{{<STRING> | handleize}}

{{<STRING> | handleize: <DIVIDER>}}
```

### Tags

#### title

```
{% title %}

{% title name: '<NAME>', title: '<TITLE>', divider: '<DIVIDER>' %}
```

Installation
------------

### Wagon

In your Wagon site, add the following lines to your Gemfile:

    group :misc do
      gem 'locomotivecms-liquids', github: 'bitaculous/locomotivecms-liquids'
    end

### Engine

In the Gemfile of your engine, add the following line:

    gem 'locomotivecms-liquids', github: 'bitaculous/locomotivecms-liquids'

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### See Test Coverage

Run `COVERAGE=true rspec`.

### Run [RuboCop]

Run `rubocop`.

To run all specs and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

Credits
-------

[The people behind LocomotiveCMS], especially [Didier Lafforgue], for creating [LocomotiveCMS::LiquidExtensions] which
this Gem is based on.

License
-------

Liquids is released under the [MIT License (MIT)], see [LICENSE].

[Code Climate]: https://codeclimate.com/github/bitaculous/locomotivecms-liquids "LocomotiveCMS Liquids at Code Climate"
[Code Climate Status]: https://img.shields.io/codeclimate/github/bitaculous/locomotivecms-liquids.svg?style=flat "Code Climate Status"
[Didier Lafforgue]: https://github.com/did "Didier Lafforgue at GitHub"
[Engine]: https://github.com/locomotivecms/engine "The engine of LocomotiveCMS."
[Gemnasium]: https://gemnasium.com/bitaculous/locomotivecms-liquids "LocomotiveCMS Liquids at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/locomotivecms-liquids.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/locomotivecms-liquids/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/locomotivecms-liquids/master/LICENSE "License"
[Liquid]: http://liquidmarkup.org "Liquid Templating language"
[LocomotiveCMS Liquids]: https://bitaculous.github.io/locomotivecms-liquids/ "A package of Liquid blocks, tags and filters for LocomotiveCMS Wagon and Engine."
[LocomotiveCMS::LiquidExtensions]: https://github.com/locomotivecms/liquid_extensions "A list of misc Liquid tags and filters."
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[The people behind LocomotiveCMS]: https://github.com/orgs/locomotivecms/people "The people behind LocomotiveCMS"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Solid]: https://github.com/tigerlily/solid "Helpers for easily creating custom Liquid tags and block."
[Test Coverage]: https://codeclimate.com/github/bitaculous/locomotivecms-liquids "Test Coverage (Code Climate)"
[Test Coverage Status]: https://img.shields.io/codeclimate/coverage/github/bitaculous/locomotivecms-liquids.svg?style=flat "Test Coverage Status"
[Travis CI]: https://travis-ci.org/bitaculous/locomotivecms-liquids "LocomotiveCMS Liquids at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/locomotivecms-liquids.svg?style=flat "Travis CI Status"
[Wagon]: https://github.com/locomotivecms/wagon "The command line tool that let's you develop for Locomotive right on your local machine."