package google

testSamples: #Terraform
testSamples: resource: {
	google_compute_instance: test: {
		name:         "test"
		machine_type: "e2-micro"
	}
}
