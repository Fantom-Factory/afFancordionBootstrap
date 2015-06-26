using afFancordion

@Fixture { failFast = false }
class SkinTest : Test {
	
	** Runs this Test class as a Fancordion fixture. 
	** This method name is prefixed with 'test' so it is picked up by 'fant' and other test runners.
	virtual Void testFixture() {
		runner := FancordionRunner.current ?: FancordionRunner()

		setupRunner(runner)
		
		runner.runFixture(this)
	}
	
	virtual Void setupRunner(FancordionRunner runner) { }
}
