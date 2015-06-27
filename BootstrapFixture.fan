using afFancordion
using afFancordionBootstrap
	
** Bootswatch Fixture
** ##################
**
** This simple fixture is rendered with the Bootswatch 'Cyborg' skin.
**
** Example
** -------
** Fancordion says, [Hello Human!]`verifyEq:greeting()`
**
class BootstrapFixture : FixtureTest {
    override FancordionRunner fancordionRunner() {
        FancordionRunner() {
            it.gimmeSomeSkin = |->FancordionSkin| { BootswatchSkin("Cyborg") } 
            it.skinType = BootstrapSkin# 
        }
    }

    Str greeting() {
        "Hello Human!"
    }
}
