package aws

testSamples: #Terraform
testSamples: resource: {
	aws_instance: sample: {
		ami: "ami-123"
		instance_type: "t2.micro"
		availability_zone: "us-east-1a"
	}

	aws_acm_certificate: sample: {
		certificate_body: "something"
	}

	aws_security_group: samples: {}

	aws_appintegrations_event_integration: samples: {
		name: "test"
		eventbridge_bus: "sample"
		event_filter: source: "sample"
	}

	aws_vpn_connection: samples: {
		customer_gateway_id: "sample-id"
		type: "test"
	}
}
