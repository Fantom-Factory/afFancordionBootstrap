using afFancordion

@Fixture { failFast = false; specification=`TestSkinRendering.spec` }
abstract class TestSkinRendering : SkinTest {
	abstract Str skinName()
}

class TestSkinClassic : TestSkinRendering {
	override Str skinName	:= "Classic"
	override Void setupRunner(FancordionRunner runner) {
		runner.skinType = ClassicSkin2#
	}
}

class TestSkinBootstrap : TestSkinRendering {
	override Str skinName	:= "Bootstrap"
	override Void setupRunner(FancordionRunner runner) {
		runner.skinType = BootstrapSkin2#
	}
}

abstract class TestSkinBootswatch : TestSkinRendering {
	override Str skinName	:= this.typeof.name[4..<-4]
	override Void setupRunner(FancordionRunner runner) {
		runner.gimmeSomeSkin = |->FancordionSkin| { BootswatchSkin2(skinName) }
	}
}

class TestCeruleanSkin	: TestSkinBootswatch { }
class TestCosmoSkin 	: TestSkinBootswatch { }
class TestCyborgSkin 	: TestSkinBootswatch { }
class TestDarklySkin 	: TestSkinBootswatch { }
class TestFlatlySkin 	: TestSkinBootswatch { }
class TestJournalSkin 	: TestSkinBootswatch { }
class TestLumenSkin 	: TestSkinBootswatch { }
class TestPaperSkin 	: TestSkinBootswatch { }
class TestReadableSkin 	: TestSkinBootswatch { }
class TestSandstoneSkin : TestSkinBootswatch { }
class TestSimplexSkin 	: TestSkinBootswatch { }
class TestSlateSkin 	: TestSkinBootswatch { }
class TestSpacelabSkin 	: TestSkinBootswatch { }
class TestSuperheroSkin : TestSkinBootswatch { }
class TestUnitedSkin 	: TestSkinBootswatch { }
class TestYetiSkin 		: TestSkinBootswatch { }

class ClassicSkin2		: ClassicSkin { 	
	override Uri copyFile(File srcFile, Uri destUrl, Bool overwrite := false) {
		if (srcFile.normalize.uri.host == "afFancordion")
			destUrl = `classic/`
		return super.copyFile(srcFile, destUrl, overwrite)
	}
}

class BootstrapSkin2	: BootstrapSkin { 	
	new make(Bool useTheme := false) : super(useTheme) { }
	override Uri copyFile(File srcFile, Uri destUrl, Bool overwrite := false) {
		if (srcFile.normalize.uri.host == "afFancordionBootstrap")
			destUrl = srcFile.normalize.uri.relTo(`fan://afFancordionBootstrap/doc/skins/afFancordionBootstrap/`)
		return destUrl	// don't copy the file - we'd just be overwriting the src!
	}
}

class BootswatchSkin2	: BootswatchSkin { 	
	new make(Str skinName) : super(skinName) { }
	override Uri copyFile(File srcFile, Uri destUrl, Bool overwrite := false) {
		if (srcFile.normalize.uri.host == "afFancordionBootstrap")
			destUrl = srcFile.normalize.uri.relTo(`fan://afFancordionBootstrap/doc/skins/afFancordionBootstrap/`)
		return destUrl	// don't copy the file - we'd just be overwriting the src!
	}
}

