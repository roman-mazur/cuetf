package helm

testSamples: #Terraform
testSamples: resource: {
	helm_release: sample: {
		chart: "sample"
		name: "test"
	}
}
