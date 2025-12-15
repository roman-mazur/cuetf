package res

#aws_devicefarm_instance_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_devicefarm_instance_profile")
	close({
		arn?:         string
		description?: string
		exclude_app_packages_from_cleanup?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		id?:               string
		name!:             string
		package_cleanup?:  bool
		reboot_after_use?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
