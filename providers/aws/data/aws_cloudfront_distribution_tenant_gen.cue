package data

#aws_cloudfront_distribution_tenant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudfront_distribution_tenant")
	close({
		arn?:                 string
		connection_group_id?: string
		customizations?: [...close({
			certificate?: [...close({
				arn?: string
			})]
			geo_restriction?: [...close({
				locations?: [...string]
				restriction_type?: string
			})]
			web_acl?: [...close({
				action?: string
				arn?:    string
			})]
		})]
		distribution_id?: string
		domain?:          string
		domains?: [...close({
			domain?: string
			status?: string
		})]
		enabled?: bool
		etag?:    string
		id?:      string
		managed_certificate_request?: [...close({
			certificate_transparency_logging_preference?: string
			primary_domain_name?:                         string
			validation_token_host?:                       string
		})]
		name?: string
		parameters?: [...close({
			name?:  string
			value?: string
		})]
		status?: string
		tags?: [string]: string
	})
}
