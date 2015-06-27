#Fancordion Bootstrap v1.0.0
---
[![Written in: Fantom](http://img.shields.io/badge/written%20in-Fantom-lightgray.svg)](http://fantom.org/)
[![pod: v1.0.0](http://img.shields.io/badge/pod-v1.0.0-yellow.svg)](http://www.fantomfactory.org/pods/afFancordionBootstrap)
![Licence: MIT](http://img.shields.io/badge/licence-MIT-blue.svg)

## Overview

Fancordion is a highly skinnable *Test by Example* testing framework.

Fancordion Bootstrap provides [Bootstrap](http://getbootstrap.com/) and [Bootswatch](https://bootswatch.com/) skins for Fancordion test results.

Fancordion Bootstrap is bundled with skins for Bootstrap v3.3.5.

![Bootstrap rendering example](http://pods.fantomfactory.org/pods/afFancordionBootstrap/doc/bootstrapRenderingExample.png)

## Install

Install `Fancordion Bootstrap` with the Fantom Repository Manager ( [fanr](http://fantom.org/doc/docFanr/Tool.html#install) ):

    C:\> fanr install -r http://repo.status302.com/fanr/ afFancordionBootstrap

To use in a [Fantom](http://fantom.org/) project, add a dependency to `build.fan`:

    depends = ["sys 1.0", ..., "afFancordionBootstrap 1.0"]

## Documentation

Full API & fandocs are available on the [Fantom Pod Repository](http://pods.fantomfactory.org/pods/afFancordionBootstrap/).

## Quick Start

1. Create a text file called `BootstrapFixture.fan`

        using afFancordion
        using afFancordionBootstrap
        
        ** Bootstrap Fixture
        ** #################
        **
        ** This simple fixture is rendered with the Bootstrap skin.
        **
        ** Example
        ** -------
        ** Fancordion says, [Hello World!]`verifyEq:greeting()`
        **
        class BootstrapFixture : FixtureTest {
            override FancordionRunner fancordionRunner() {
                FancordionRunner() {
                    it.skinType = BootstrapSkin#
                }
            }
        
            Str greeting() {
                "Hello World!"
            }
        }


2. Run `BootstrapFixture.fan` as a Fantom test script ( [fant](http://fantom.org/doc/docTools/Fant.html) ) from the command prompt:

        C:\> fant BootstrapFixture.fan
        
        -- Run:  BootstrapFixture_0::BootstrapFixture.testFancordionFixture...
           Pass: BootstrapFixture_0::BootstrapFixture.testFancordionFixture [0]
        
        [info] [afFancordion] C:\temp\fancordion\from-script\BootstrapFixture.html ... Ok
        
        Time: 691ms
        
        ***
        *** All Fixtures Passed! [1 Fixtures]
        ***


3. View the generated fixture result file:

  ![Fancordion Fixture Result](http://pods.fantomfactory.org/pods/afFancordionBootstrap/doc/bootstrapFixture.png)



## Usage

### Bootstrap Skins

To use the vanilla `Bootstrap` skin, set the `skinType` field on [FancordionRunner](http://pods.fantomfactory.org/pods/afFancordion/api/FancordionRunner):

    using afFancordion
    using afFancordionBootstrap
    
    ** My Fixture
    class BootstrapFixture : FixtureTest {
        override FancordionRunner fancordionRunner() {
            FancordionRunner() {
                it.skinType = BootstrapSkin#
            }
        }
    
        ...
    }

To use the themed version of Bootstrap, set the `gimmeSomeSkin` field instead:

    it.gimmeSomeSkin = |->FancordionSkin| { BootstrapSkin(true) }

### Bootswatch Skins

Fancordion Bootstrap is also bundled with Bootswatch skins. To use, set the `gimmeSomeSkin` function on [FancordionRunner](http://pods.fantomfactory.org/pods/afFancordion/api/FancordionRunner):

    using afFancordion
    using afFancordionBootstrap
    
    ** My Bootswatch Fixture
    class BootswatchFixture : FixtureTest {
        override FancordionRunner fancordionRunner() {
            FancordionRunner() {
                it.gimmeSomeSkin = |->FancordionSkin| {
                    BootswatchSkin("Cyborg")
                }
            }
        }
    
        ...
    }

The Bootswatch `skinName` may be one of:

- `Cerulean`
- `Cosmo`
- `Cyborg`
- `Darkly`
- `Flatly`
- `Journal`
- `Lumen`
- `Paper`
- `Readable`
- `Sandstone`
- `Simplex`
- `Slate`
- `Spacelab`
- `Superhero`
- `United`
- `Yeti`

![Fancordion Cyborg Fixture Result](http://pods.fantomfactory.org/pods/afFancordionBootstrap/doc/cyborgFixture.png)

### Error Modals

Should an error be thrown in your Fancordion fixture, a `Show Stack Trace` button is shown next to the command in error which, when pressed, displays a modal dialogue with the stack trace.

![Stack Trace in Err Modal](http://pods.fantomfactory.org/pods/afFancordionBootstrap/doc/errModal.png)

