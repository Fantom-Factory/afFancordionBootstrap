using afBeanUtils

class BootswatchSkin : BootstrapSkin {

	** The name of the Bootswatch skin.
	Str skinName
	
	** Creates a Bootswatch skin of the given name.
	new make(Str skinName) {
		this.skinName = skinName
		if (this.typeof.pod.file(bootstrapCssUri, false)?.exists?.not ?: true) {
			skins := this.typeof.pod.files.findAll { it.path.getSafe(1)?.lower == "bootswatch"}.map { it.name[0..<-8].capitalize }
			err:= ArgNotFoundErr("Could not find Bootswatch skin '${skinName}'", skins)
			err.trace
			throw err
		}
	}
	
	** Returns the location of the Bootswatch CSS file.
	override Uri bootstrapCssUri() {
		`fan://afFancordionBootstrap/res/bootswatch/${skinName.lower}.min.css`
	}
}
