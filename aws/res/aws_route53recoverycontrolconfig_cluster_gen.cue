package res

#aws_route53recoverycontrolconfig_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53recoverycontrolconfig_cluster")
	close({
		arn?: string
		cluster_endpoints?: [...close({
			endpoint?: string
			region?:   string
		})]
		id?:           string
		name!:         string
		network_type?: string
		status?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
