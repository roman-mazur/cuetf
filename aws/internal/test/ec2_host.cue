package test

testEc2Host: {
	name: "aws_ec2_host"
	sample: #awsResourceSample & {#name: "ec2_host"}

	validation: {}

	sample: code: """

	#ec2_host: {
		asset_id?: string
		auto_placement?: string
		availability_zone!: string
		host_recovery?: string
		id?: string
		instance_family?: string
		instance_type?: string
		outpost_arn?: string
		tags?: #ec2_host_tags
		tags_all?: #ec2_host_tags_all
	}

	#ec2_host_tags: [string]: string
	#ec2_host_tags_all: [string]: string

	"""
}
