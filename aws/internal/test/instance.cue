package test

testInstance: {
	name:   "aws_instance"
	sample: #awsResourceSample & {#name: "instance"}

	sample: output: {
		primitives: ami: type: "string"
		primitives: ami: optional: true
	}

	validation: {}
}
