package data

#aws_outposts_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_outposts_asset")
	arn:             string
	asset_id:        string
	asset_type?:     string
	host_id?:        string
	id?:             string
	rack_elevation?: number
	rack_id?:        string
}
