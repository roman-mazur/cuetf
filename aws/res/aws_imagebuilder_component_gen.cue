package res

#aws_imagebuilder_component: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_component")
	close({
		arn?:                string
		change_description?: string
		data?:               string
		date_created?:       string
		description?:        string
		encrypted?:          bool
		id?:                 string
		kms_key_id?:         string
		name!:               string
		owner?:              string
		platform!:           string
		region?:             string
		skip_destroy?:       bool
		supported_os_versions?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:    string
		uri?:     string
		version!: string
	})
}
