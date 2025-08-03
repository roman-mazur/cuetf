package res

#aws_media_packagev2_channel_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_media_packagev2_channel_group")
	close({
		arn?:           string
		description?:   string
		egress_domain?: string
		name!:          string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
