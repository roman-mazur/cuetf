package res

#aws_devicefarm_instance_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_instance_profile")
	arn?:         string
	description?: string
	exclude_app_packages_from_cleanup?: [...string]
	id?:               string
	name!:             string
	package_cleanup?:  bool
	reboot_after_use?: bool
	tags?: [string]:     string
	tags_all?: [string]: string
}
