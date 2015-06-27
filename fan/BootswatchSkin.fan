using afBeanUtils

** A Fancordion Skin for [Bootswatch]`https://bootswatch.com/` themes.
** Bundled Bootswatch skins are:
** 
**  - Cerulean
**  - Cosmo
**  - Cyborg
**  - Darkly
**  - Flatly
**  - Journal
**  - Lumen
**  - Paper
**  - Readable
**  - Sandstone	
**  - Simplex
**  - Slate
**  - Spacelab
**  - Superhero
**  - United
**  - Yeti
** 
** Use the above name when creating a 'Bootswatch' skin, example:
** 
**   syntax: fantom
**   skin := BootswatchSkin("Darkly")
**  
** To use a 'Bootswatch' skin, set the 'gimmeSomeSkin' function on [FancordionRunner]`afFancordion::FancordionRunner`:
** 
**   syntax: fantom
** 
**   using afFancordion
**   using afFancordionBootstrap
** 
**   ** My Bootswatch Fixture
**   class BootswatchFixture : FixtureTest {
**       override FancordionRunner fancordionRunner() {
**           FancordionRunner() {
**               it.gimmeSomeSkin = |->FancordionSkin| {
**                   BootswatchSkin("Cyborg")
**               } 
**           }
**       }
** 
**       ...
**   }
**   
class BootswatchSkin : BootstrapSkin {

	** The name of the Bootswatch skin.
	Str skinName
	
	** Creates a Bootswatch skin of the given name.
	new make(Str skinName) : super(false) {
		this.skinName = skinName
		if (this.typeof.pod.file(bootstrapCssUri, false)?.exists?.not ?: true) {
			skins := this.typeof.pod.files.findAll { it.path.getSafe(2)?.lower == "bootswatch"}.map { it.name[0..<-8].capitalize }
			err:= ArgNotFoundErr("Could not find Bootswatch skin '${skinName}'", skins)
			throw err
		}
	}
	
	** Returns the location of the Bootswatch CSS file.
	override Uri bootstrapCssUri() {
		`fan://afFancordionBootstrap/doc/skins/bootswatch/${skinName.lower}.min.css`
	}
}
