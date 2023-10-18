package resources

#aws_ec2_host: {
	asset_id?:          string
	auto_placement?:    string
	availability_zone!: string
	host_recovery?:     string
	id?:                string
	instance_family?:   string
	instance_type?:     string
	outpost_arn?:       string
	tags?:              #aws_ec2_host_tags
	tags_all?:          #aws_ec2_host_tags_all
}

#aws_ec2_host_tags: [string]:     string
#aws_ec2_host_tags_all: [string]: string
