using build
using compiler

class Build : BuildPod {

	new make() {
		podName = "afFancordionBootstrap"
		summary = "Bootstrap and Bootswatch skins for Fancordion test results"
		version = Version("0.0.2")

		meta = [
			"proj.name"		: "Fancordion Bootstrap",	
			"repo.tags"		: "testing",
			"repo.public"	: "false"
		]

		depends = [
			"sys          1.0",
			"afFancordion 1.0.3 - 1.1",
			"afBeanUtils  1.0.4 - 1.0"
		]

		srcDirs = [`test/`, `fan/`]
		resDirs = [`doc/`, `test/`, `res/bootstrap/css/`, `res/bootstrap/fonts/`, `res/bootstrap/js/`, `res/jquery/`, `res/bootswatch/`]
	}
	
	//** see http://fantom.org/forum/topic/2283
	//override Void onCompileFan(CompilerInput ci) {
	//	ci.docTests = true
	//}
}
