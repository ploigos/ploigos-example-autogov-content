package workflowResult

default unitTestPass = false
default codeCoveragePass = false
default complexityPass = false
default staticCodeAnalysisPass = false

unitTestPass {
    input.workflow.unitTest.attestations.testQuantity == input.workflow.unitTest.attestations.passQuantity
}

codeCoveragePass  {
    input.workflow.staticCodeAnalysis.attestations.codeCoverage >= 80
}

complexityPass {
    input.workflow.staticCodeAnalysis.attestations.cyclomaticComplexity < 40
}

staticCodeAnalysisPass {
    codeCoveragePass
    complexityPass
}

passAll {
	unitTestPass
	staticCodeAnalysisPass
}
