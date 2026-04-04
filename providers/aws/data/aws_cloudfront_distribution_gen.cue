package data

#aws_cloudfront_distribution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudfront_distribution")
	close({
		aliases?: [...string]
		anycast_ip_list_id?:             string
		arn?:                            string
		domain_name?:                    string
		enabled?:                        bool
		etag?:                           string
		hosted_zone_id?:                 string
		id!:                             string
		in_progress_validation_batches?: number
		last_modified_time?:             string
		status?:                         string
		tags?: [string]: string
		web_acl_id?: string
	})
}
