using build
using compiler

class Build : BuildPod {

	new make() {
		podName = "afFancordionBootstrap"
		summary = "Bootstrap and Bootswatch skins for Fancordion test results"
		version = Version("1.0.3")

		meta = [
			"proj.name"		: "Fancordion Bootstrap",	
			"repo.tags"		: "testing",
			"repo.public"	: "false"
		]

		depends = [
			"sys          1.0.68 - 1.0",
			"afFancordion 1.1.0  - 1.1",
			"afBeanUtils  1.0.4  - 1.0"
		]

		srcDirs = [`fan/`, `test/`]
		resDirs = [`doc/`, `test/`, `doc/skins/bootstrap/css/`, `doc/skins/bootstrap/fonts/`, `doc/skins/bootstrap/js/`, `doc/skins/bootswatch/`]
	}
	
	** see http://fantom.org/forum/topic/2283
	override Void onCompileFan(CompilerInput ci) {
		ci.docTests = true
		if (ci.resFiles == null)
			ci.resFiles = Uri[,]
		addRecursive(ci.resFiles, `doc/skins/`.toFile)
	}

	private static Void addRecursive(Uri[] resDirs, File dir) {
		if (!dir.isDir) throw Err("`${dir.normalize}` is not a directory")
		dir.walk { if (it.isDir && !resDirs.contains(it.uri)) resDirs.add(it.uri) }
	}
}
