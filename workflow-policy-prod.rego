package workflowResult

default unitTestCount = false
default unitTestPass = false
default unitTestErrors = false

unitTestCount {
  input.workflow.uat.MavenSeleniumCucumber.attestations.uat-evidence-tests.value >= 3
}

unitTestPass {
  input.workflow.uat.MavenSeleniumCucumber.attestations.uat-evidence-failures.value == 0
}

unitTestErrors  {
    input.workflow.uat.MavenSeleniumCucumber.attestations.uat-evidence-errors.value == 0
}


passAll {
	unitTestCount
	unitTestPass
	unitTestErrors
}
