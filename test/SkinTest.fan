using afFancordion

@Fixture { failFast = false }
class SkinTest : Test {
	
	** Runs this Test class as a Fancordion fixture. 
	** This method name is prefixed with 'test' so it is picked up by 'fant' and other test runners.
	virtual Void testFixture() {
		runner := FancordionRunner.current ?: MyFancordionRunner() {
			it.outputDir = `doc/skins/`.toFile
		}

		setupRunner(runner)
		
		runner.runFixture(this)
	}
	
	virtual Void setupRunner(FancordionRunner runner) { }
}

class MyFancordionRunner : FancordionRunner {
	// please don't delete my resource files! 
	override Void suiteSetup() { }
}
