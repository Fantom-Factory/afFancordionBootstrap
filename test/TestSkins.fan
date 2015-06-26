using afFancordion

** Fancordion Skins
** ################
**  - [Classic Skin]`run:TestSkinClassic#`
**  - [Bootstrap Skin]`run:TestSkinBootstrap#`
** 
** Bootswatch Skins:
**  - [Cerulean Skin]`run:TestCeruleanSkin#` 	- A calm blue sky
**  - [Cosmo Skin]`run:TestCosmoSkin#` 			- An ode to Metro
**  - [Cyborg Skin]`run:TestCyborgSkin#`		- Jet black and electric blue
**  - [Darkly Skin]`run:TestDarklySkin#`		- Flatly in night mode
**  - [Flatly Skin]`run:TestFlatlySkin#`		- Flat and modern
**  - [Journal Skin]`run:TestJournalSkin#`		- Crisp like a new sheet of paper
**  - [Lumen Skin]`run:TestLumenSkin#`			- Light and shadow
**  - [Paper Skin]`run:TestPaperSkin#`			- Material is the metaphor
**  - [Readable Skin]`run:TestReadableSkin#`	- Optimized for legibility
**  - [Sandstone Skin]`run:TestSandstoneSkin#`	- A touch of warmth	
**  - [Simplex Skin]`run:TestSimplexSkin#`		- Mini and minimalist
**  - [Slate Skin]`run:TestSlateSkin#`			- Shades of gunmetal grey
**  - [Spacelab Skin]`run:TestSpacelabSkin#`	- Silvery and sleek
**  - [Superhero Skin]`run:TestSuperheroSkin#`	- The brave and the blue
**  - [United Skin]`run:TestUnitedSkin#`		- Ubuntu orange and unique font
**  - [Yeti Skin]`run:TestYetiSkin#`			- A friendly foundation
** 
class TestSkins : SkinTest {
	override Void setupRunner(FancordionRunner runner) {
		runner.skinType = BootstrapSkin#
	}
}
