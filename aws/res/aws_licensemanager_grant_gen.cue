package res

#aws_licensemanager_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_licensemanager_grant")
	close({
		allowed_operations!: [...string]
		arn?:         string
		home_region?: string
		id?:          string
		license_arn!: string
		name!:        string
		parent_arn?:  string
		principal!:   string
		region?:      string
		status?:      string
		version?:     string
	})
}
