package res

#aws_cloud9_environment_ec2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloud9_environment_ec2")
	close({
		arn?:                         string
		automatic_stop_time_minutes?: number
		connection_type?:             string
		description?:                 string
		id?:                          string
		image_id!:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		instance_type!: string
		name!:          string
		owner_arn?:     string
		subnet_id?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})
}
