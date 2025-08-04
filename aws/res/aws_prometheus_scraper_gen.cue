package res

#aws_prometheus_scraper: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_scraper")
	close({
		alias?: string
		destination?: matchN(1, [#destination, [...#destination]])
		arn?:    string
		id?:     string
		region?: string
		role_configuration?: matchN(1, [#role_configuration, [...#role_configuration]])
		role_arn?: string
		source?: matchN(1, [#source, [...#source]])
		scrape_configuration!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#destination: close({
		amp?: matchN(1, [_#defs."/$defs/destination/$defs/amp", [..._#defs."/$defs/destination/$defs/amp"]])
	})

	#role_configuration: close({
		source_role_arn?: string
		target_role_arn?: string
	})

	#source: close({
		eks?: matchN(1, [_#defs."/$defs/source/$defs/eks", [..._#defs."/$defs/source/$defs/eks"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/destination/$defs/amp": close({
		workspace_arn!: string
	})

	_#defs: "/$defs/source/$defs/eks": close({
		cluster_arn!: string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	})
}
