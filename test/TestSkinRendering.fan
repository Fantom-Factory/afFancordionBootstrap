using afFancordion

@Fixture { failFast = false; specification=`TestSkinRendering.spec` }
abstract class TestSkinRendering : SkinTest {
	abstract Str skinName()
}

class TestSkinClassic : TestSkinRendering {
	override Str skinName	:= "Classic"
	override Void setupRunner(FancordionRunner runner) {
		runner.skinType = ClassicSkin#
	}
}

class TestSkinBootstrap : TestSkinRendering {
	override Str skinName	:= "Bootstrap"
	override Void setupRunner(FancordionRunner runner) {
		runner.skinType = BootstrapSkin#
	}
}

abstract class TestSkinBootswatch : TestSkinRendering {
	override Str skinName	:= this.typeof.name[4..<-4]
	override Void setupRunner(FancordionRunner runner) {
		runner.gimmeSomeSkin = |->FancordionSkin| { BootswatchSkin(skinName) }
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
