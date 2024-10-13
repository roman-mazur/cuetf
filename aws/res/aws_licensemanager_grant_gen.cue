package res

#aws_licensemanager_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_licensemanager_grant")
	allowed_operations!: [...string]
	arn?:         string
	home_region?: string
	id?:          string
	license_arn!: string
	name!:        string
	parent_arn?:  string
	principal!:   string
	status?:      string
	version?:     string
}
