package data

#aws_outposts_assets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_outposts_assets")
	close({
		arn!: string
		asset_ids?: [...string]
		host_id_filter?: [...string]
		id?:     string
		region?: string
		status_id_filter?: [...string]
	})
}
