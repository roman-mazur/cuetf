package res

#aws_dsql_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dsql_cluster")
	close({
		arn?: string
		multi_region_properties?: matchN(1, [#multi_region_properties, [...#multi_region_properties]])
		timeouts?:                    #timeouts
		deletion_protection_enabled?: bool
		encryption_details?: [...close({
			encryption_status?: string
			encryption_type?:   string
		})]
		identifier?:         string
		kms_encryption_key?: string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_endpoint_service_name?: string
	})

	#multi_region_properties: close({
		clusters?: [...string]
		witness_region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
